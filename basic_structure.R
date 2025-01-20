## Basic Structure of Data Analyses


## Analysis of PM10 and Mortality in New York City
library(tidyverse)

## Visually inspect 'pm10.csv' file

## Read in data from CSV file
dat <- read_csv("pm10.csv")

nrow(dat)
names(dat)

dat |> 
    summarize(association = cor(pm10, mortality))

dat

dat |> 
    filter(!is.na(pm10)) |> 
    summarize(association = cor(pm10, mortality))


################################################################################
## Analysis of MAACS data on eNO and Mouse Allergen

dat <- read_csv("maacs.csv")
dat

nrow(dat)
names(dat)

dat |> 
    ggplot(aes(eno)) + 
    geom_histogram(bins = 8, color = "gray")

summary(dat$duBedMusM)

dat |> 
    summarize(correlation = cor(duBedMusM, eno))

