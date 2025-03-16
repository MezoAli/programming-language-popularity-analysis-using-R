rm(list = ls())
graphics.off()

library(tidyverse)

library(readr)
library(dplyr)
library(ggplot2)

data <- read_csv("stack_overflow_data.csv")

r_2020 <- data %>% 
  filter(year == 2020) %>% 
  mutate(percentage = (num_questions / sum(num_questions) * 100)) %>% 
  filter(tag == "r")
