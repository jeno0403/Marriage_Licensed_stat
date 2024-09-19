#### Preamble ####
# Purpose: This script simulates the number of marriage licenses issued in Toronto over a given period and performs statistical analysis.
# Author: Group 14
# Date: Sep 19 2024
# License: MIT
# Pre-requisites: You must have the following R packages installed: 'tidyverse', 'lubridate', 'ggplot2', 'opendatatoronto', and 'testthat'.
# Any other information needed? This script requires data gathered from the Toronto Open Data Portal and assumes basic understanding of R scripts, simulations, and statistical testing.



#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(14)

# Define the start and end date
start_date <- as.Date("2015-01-01")
end_date <- as.Date("2023-12-31")

# Set the number of random dates you want to generate
number_of_dates <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 15)
  )


#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")
