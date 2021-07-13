library(pageviews)
enwiki_2013_2015_old <- old_pageviews()
old_enwiki_hourly <- old_pageviews(granularity = "hourly", end = "2013110100")
old_enwiki_hourly