library(katex)
math <- example_math()
html <- katex_html(math, preview = TRUE)
mathml <- katex_mathml(math)
cat(mathml)
math
html
mathml