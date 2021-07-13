library(transcribeR)
fnames <- c('boxer.wav', 'merkley.wav')
urls <- paste("http://christoperlucas.org/transcribeR/", fnames, sep = '')
lapply(urls, function(x)download.file(x, destfile = basename(x), mode = 'wb'))

WAV_DIR <- getwd

sendAudioGetJobs(wav.dir = WAV_DIR,
                 API_KEY,
                 csv.location = CSV_LOCATION)
                 