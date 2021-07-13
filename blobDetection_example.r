library(bioacoustics)
data(mytosis)
Output <- blob_detection(mytosis, time_exp = 10, contrast_boost = 30, bg_subtract = 30)
results <-Output$data
results
