## Import data ##

# Packages
library(tidyverse)
library(here)

interviews <- read_csv(
  here("data-raw", "SAFI_clean.csv"),
  na = "NULL"
)
# A comment
glimpse(interview)
nrow(interviews)
ncol(interviews)
summary(interviews)

villages <- interviews |> count(village)

write_csv(villages,  "data/villages.csv")


read_csv("data/villages.csv")
