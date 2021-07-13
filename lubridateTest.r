library(tidyverse)
library(lubridate)

rats_raw <- read.csv("Rat_Sightings.csv", na = c("", "NA", "N/A"))

rats_clean <- rats_raw %>%
  rename(created_date = `Created.Date`,
         location_type = `Location.Type`,
         borough = Borough) %>%
  mutate(created_date = mdy_hms(created_date)) %>%
  mutate(sighting_year = year(created_date),
         sighting_month = month(created_date),
         sighting_day = day(created_date),
         sighting_weekday = wday(created_date, label = TRUE, abbr = FALSE)) %>%
  filter(borough != "Unspecified")

rats_clean