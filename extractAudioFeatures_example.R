library(communication)
wav.fnames = list.files(file.path('test1.wav'),
                        pattern = 'wav$',
                        recursive = TRUE,
                        full.names = TRUE
                        )
audio <- extractAudioFeatures(wav.fnames = wav.fnames, derivatives = 0)