library(communication)
data('audio')
#mod <- hmm(audio$data, nstates = 2, control = list(verbose = TRUE))
audio$data < standardizeFeatures(
    lapply(audio$data, function(x) na.omit(x))
)    