data_2020 <- read.xlsx("pbp2020.xlsx")
data_2021 <- read.xlsx("pbp2021.xlsx")
data_2022 <- read.xlsx("pbp2022.xlsx")
data_2023 <- read.xlsx("pbp2023.xlsx")


## 2020 Change ##
colnames(data_2020)
names(data_2020)[names(data_2020) == "Exit_Velocity"] <- "exit_velocity"
names(data_2020)[names(data_2020) == "hitData.launchAngle"] <- "launch_angle"
names(data_2020)[names(data_2020) == "result.event"] <- "event"

## 2021 Change ##
colnames(data_2021)
names(data_2021)[names(data_2021) == "hitData.launchSpeed"] <- "exit_velocity"
names(data_2021)[names(data_2021) == "hitData.launchAngle"] <- "launch_angle"
names(data_2021)[names(data_2021) == "result.event"] <- "event"

## 2022 Change ##
colnames(data_2022)
names(data_2022)[names(data_2022) == "hitData.launchSpeed"] <- "exit_velocity"
names(data_2022)[names(data_2022) == "hitData.launchAngle"] <- "launch_angle"
names(data_2022)[names(data_2022) == "result.event"] <- "event"

## 2023 Change ##
colnames(data_2023)
names(data_2023)[names(data_2023) == "launch_speed"] <- "exit_velocity"
names(data_2023)[names(data_2023) == "events"] <- "event"









