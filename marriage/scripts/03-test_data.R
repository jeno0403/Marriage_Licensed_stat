#### Preamble ####
# Purpose:Test if all the data contains info that we want
# Author: Group 14
# Date:19 Sep 2024
# License: MIT
# Pre-requisites: Need to have simulate data


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))






