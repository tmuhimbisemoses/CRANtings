library(bioacoustics)
blob_detection(
  wave,
  channel = "left",
  time_exp = 1,
  min_dur = 1.5,
  maxx_dur = 80,
  min_area = 40,
  min_TBE = 20,
  max_TBE = 1000,
  EDG = 0.9,
  LPF,
  HPF = 16000,
  FFT_size = 256,
  FFT_overlap = 0.875,
  blur = 2,
  bg_substract = 20,
  contrast_boost = 20,
  settings = FALSE,
  spectro_dir = NULL,
  time_scale = 0.1,
  ticks = TRUE
)