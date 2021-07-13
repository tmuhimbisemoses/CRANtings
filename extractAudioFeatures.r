library(communication)
extractAudioFeatures(
  wav.dir = getwd(),
  wav.fnames = NULL,
  windowSize = 25,
  windowShift = 12.5,
  windowType = 'HAMMING',
  derivatives = 2,
  verbose = 1,
  recursive = FALSE
 )