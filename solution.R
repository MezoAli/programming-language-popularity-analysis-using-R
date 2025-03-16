rm(list = ls())
graphics.off()

library(tidyverse)

library(readr)
library(dplyr)
library(ggplot2)

data <- read_csv("stack_overflow_data.csv")
