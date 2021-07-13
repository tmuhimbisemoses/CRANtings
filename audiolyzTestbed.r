library(tidyverse)
library(lubridate)

rats_raw <- read.csv("Rat_Sightings.csv", na = c("", "NA", "N/A"))

# If you get an error that says "All formats failed to parse. No formats
# found", it's because the mdy_hms function couldn't parse the date. The date
# variable *should* be in this format: "04/03/2017 12:00:00 AM", but in some
# rare instances, it might load without the seconds as "04/03/2017 12:00 AM".
# If there are no seconds, use mdy_hm() instead of mdy_hms().
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

# See the count of rat sightings by weekday
rats_clean %>%
  count(sighting_weekday)

# Assign a summarized data frame to an object to use it in a plot
rats_by_weekday <- rats_clean %>%
  count(sighting_weekday, sighting_year)

ggplot(rats_by_weekday, aes(x = fct_rev(sighting_weekday), y = n)) + 
  geom_col() +
  coord_flip() +
  facet_wrap(~ sighting_year)

# See the count of rat sightings by weekday and borough
rats_clean %>%
  count(sighting_weekday, borough, sighting_year)

# An alternative to count() is to specify the groups with group_by() and then
# be explicit about how you're summarizing the groups, such as calculating the
# mean, standard deviation, or number of observations (we do that here with
# `n()`).
rats_clean %>%
  group_by(sighting_weekday, borough) %>%
  summarize(n = n())