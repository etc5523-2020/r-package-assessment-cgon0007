## code to prepare `coronavirus` dataset goes here

library(readr)

#library(janitor)
#library(tidyr)
#library(magrittr)
#library(desc)
#library(lubridate)

coronavirus <- read_csv("data-raw/coronavirus.csv")



usethis::use_data(coronavirus, overwrite = TRUE)


