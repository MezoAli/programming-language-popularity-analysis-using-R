rm(list = ls())
graphics.off()

library(tidyverse)

library(readr)
library(dplyr)
library(ggplot2)

data <- read_csv("stack_overflow_data.csv")

r_2020 <- data %>% 
  filter(year == 2020) %>% 
  mutate(percentage = (num_questions / year_total) * 100) %>% 
  filter(tag == "r")



sorted_tags <- data %>%
  filter(year >= 2015) %>% 
  group_by(tag) %>% 
  summarize(tag_total = sum(num_questions)) %>% 
  arrange(desc(tag_total))

# Get the five largest tags
# Another way of doing the below is by selecting the column with $: highest_tags <- head(sorted_tags$tag, n = 5)
highest_tags <- sorted_tags %>% 
  select(tag) %>% 
  head(n = 5)

