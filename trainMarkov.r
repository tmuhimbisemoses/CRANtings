library(communication)
wav.fnames = list.files(file.path('C:/Users/sethmax/Documents/'),
                        pattern = 'wav$',
                        recursive = TRUE,
                        full.names = TRUE
                        )
audio <- extractAudioFeatures(wav.fnames = wav.fnames,
                              derivatives = 0
                              )