library(baseballr)
library(tidyverse)


## ------------ 2015 Data ------------ ##

game_info <- baseballr::get_game_info_sup_petti()

game_pks <- game_info %>% 
  filter(substr(game_date, 1, 4) == 2015, status_ind == 'F')

num_of_games <- nrow(game_pks)

pbp_2015_payload <- map_df(.x = seq_along(game_pks$game_pk),
                           ~{
                             message(paste0('Grabbing pbp for game ', .x, ' of ', num_of_games))
                             payload <- get_pbp_mlb(game_pk = game_pks$game_pk[.x])
                             return(payload)
                           })



pbp2015 <- pbp_2015_payload %>% 
  select(hitData.launchSpeed, hitData.launchAngle, result.event) %>% 
  filter(pbp_2015_payload$details.isInPlay == "TRUE")

write.xlsx(pbp2015, file = "pbp2015.xlsx")

## ------------ 2016 Data ------------ ##

game_info <- baseballr::get_game_info_sup_petti()

game_pks <- game_info %>% 
  filter(substr(game_date, 1, 4) == 2016, status_ind == 'F')

num_of_games <- nrow(game_pks)

pbp_2016_payload <- map_df(.x = seq_along(game_pks$game_pk),
                           ~{
                             message(paste0('Grabbing pbp for game ', .x, ' of ', num_of_games))
                             payload <- get_pbp_mlb(game_pk = game_pks$game_pk[.x])
                             return(payload)
                           })



pbp2016 <- pbp_2016_payload %>% 
  select(hitData.launchSpeed, hitData.launchAngle, result.event) %>% 
  filter(pbp_2020_payload$details.isInPlay == "TRUE")

write.xlsx(pbp2016, file = "pbp2016.xlsx")

## ------------ 2017 Data ------------ ##

game_info <- baseballr::get_game_info_sup_petti()

game_pks <- game_info %>% 
  filter(substr(game_date, 1, 4) == 2017, status_ind == 'F')

num_of_games <- nrow(game_pks)

pbp_2017_payload <- map_df(.x = seq_along(game_pks$game_pk),
                           ~{
                             message(paste0('Grabbing pbp for game ', .x, ' of ', num_of_games))
                             payload <- get_pbp_mlb(game_pk = game_pks$game_pk[.x])
                             return(payload)
                           })



pbp2017 <- pbp_2017_payload %>% 
  select(hitData.launchSpeed, hitData.launchAngle, result.event) %>% 
  filter(pbp_2017_payload$details.isInPlay == "TRUE")

write.xlsx(pbp2017, file = "pbp2017.xlsx")

## ------------ 2018 Data ------------ ##
game_info <- baseballr::get_game_info_sup_petti()

game_pks <- game_info %>% 
  filter(substr(game_date, 1, 4) == 2018, status_ind == 'F')

num_of_games <- nrow(game_pks)

pbp_2018_payload <- map_df(.x = seq_along(game_pks$game_pk),
                           ~{
                             message(paste0('Grabbing pbp for game ', .x, ' of ', num_of_games))
                             payload <- get_pbp_mlb(game_pk = game_pks$game_pk[.x])
                             return(payload)
                           })



pbp2018 <- pbp_2018_payload %>% 
  select(hitData.launchSpeed, hitData.launchAngle, result.event) %>% 
  filter(pbp_2018_payload$details.isInPlay == "TRUE")

write.xlsx(pbp2018, file = "pbp2018.xlsx")


## ------------ 2019 Data ------------ ##

game_info <- baseballr::get_game_info_sup_petti()

game_pks <- game_info %>% 
  filter(substr(game_date, 1, 4) == 2019, status_ind == 'F')

num_of_games <- nrow(game_pks)

pbp_2019_payload <- map_df(.x = seq_along(game_pks$game_pk),
                           ~{
                             message(paste0('Grabbing pbp for game ', .x, ' of ', num_of_games))
                             payload <- get_pbp_mlb(game_pk = game_pks$game_pk[.x])
                             return(payload)
                           })



pbp2019 <- pbp_2019_payload %>% 
  select(hitData.launchSpeed, hitData.launchAngle, result.event) %>% 
  filter(pbp_2019_payload$details.isInPlay == "TRUE")

write.xlsx(pbp2019, file = "pbp2019.xlsx")


## ------------ 2020 Data ------------ ##

game_info <- baseballr::get_game_info_sup_petti()

game_pks <- game_info %>% 
  filter(substr(game_date, 1, 4) == 2020, status_ind == 'F')

num_of_games <- nrow(game_pks)

pbp_2020_payload <- map_df(.x = seq_along(game_pks$game_pk),
                           ~{
                             message(paste0('Grabbing pbp for game ', .x, ' of ', num_of_games))
                             payload <- get_pbp_mlb(game_pk = game_pks$game_pk[.x])
                             return(payload)
                           })

colnames(pbp_2020_payload)

pbp2020 <- pbp_2020_payload %>% 
  select(hitData.launchSpeed, hitData.launchAngle, result.event) %>% 
  filter(pbp_2020_payload$details.isInPlay == "TRUE")

write.xlsx(pbp2020, file = "pbp2020.xlsx")

## ------------ 2021 Data ------------ ##

game_info <- baseballr::get_game_info_sup_petti()

game_pks <- game_info %>% 
  filter(substr(game_date, 1, 4) == 2021, status_ind == 'F')

num_of_games <- nrow(game_pks)

pbp_2021_payload <- map_df(.x = seq_along(game_pks$game_pk),
                           ~{
                             message(paste0('Grabbing pbp for game ', .x, ' of ', num_of_games))
                             payload <- get_pbp_mlb(game_pk = game_pks$game_pk[.x])
                             return(payload)
                           })


pbp2021 <- pbp_2021_payload %>% 
  select(hitData.launchSpeed, hitData.launchAngle, result.event) %>% 
  filter(pbp_2021_payload$details.isInPlay == "TRUE")

write.xlsx(pbp2021, file = "pbp2021.xlsx")


## ------------ 2022 Data ------------ ##

game_info <- baseballr::get_game_info_sup_petti()

game_pks <- game_info %>% 
  filter(substr(game_date, 1, 4) == 2022, status_ind == 'F')

num_of_games <- nrow(game_pks)

pbp_2022_payload <- map_df(.x = seq_along(game_pks$game_pk),
                           ~{
                             message(paste0('Grabbing pbp for game ', .x, ' of ', num_of_games))
                             payload <- get_pbp_mlb(game_pk = game_pks$game_pk[.x])
                             return(payload)
                           })


pbp2022 <- pbp_2022_payload %>% 
  select(hitData.launchSpeed, hitData.launchAngle, result.event) %>% 
  filter(pbp_2022_payload$details.isInPlay == "TRUE")


write.xlsx(pbp2022, file = "pbp2022.xlsx")

