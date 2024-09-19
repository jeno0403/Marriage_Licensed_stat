#### Preamble ####
# # Purpose: This script cleaned  he raw marriage data into an analysis dataset
# Author: Group 14
# Date: Sep 19, 2024
# License: MIT
# Pre-requisites: Need to download the data first.

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
  )

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
