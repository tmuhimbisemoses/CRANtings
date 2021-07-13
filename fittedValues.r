library(communication)
data('audio')
mod <- hmm(audio$data, nstates = 2, control = list(verbose = TRUE))
plot(mod)