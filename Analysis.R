library(openxlsx)
library(tidyverse)
library(readr)

data_2020 <- read.xlsx("pbp2020.xlsx")
data_2021 <- read.xlsx("pbp2021.xlsx")
data_2022 <- read.xlsx("pbp2022.xlsx")
data_2023 <- read.xlsx("pbp2023.xlsx")

all_data <- rbind(data_2020, data_2021, data_2022, data_2023)



all_data <- all_data %>% 
  mutate(is_hit = ifelse(event %in% c("Single", "Double", "Triple", "Home Run"), 1,
                         ifelse(event %in% c("Sac Bunt"), NA, 0)),
         is_homerun = ifelse(event %in% "Home Run", 1,
                             ifelse(event %in% c("Sac Bunt"), NA, 0)),
         exit_velocity = round(exit_velocity)) %>% 
  na.omit()


table <- all_data %>%
  group_by(exit_velocity, launch_angle) %>%
  summarise(xBA = round(mean(is_hit, na.rm = TRUE), 3),
            xHR = round(mean(is_homerun, na.rm = TRUE) * 100, 2))


write.xlsx(table, file = "table.xlsx")

