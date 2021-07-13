library(katex)
math <- example_math()
katex> macros <- list("\\f" = "#1f(#2)")
katex> math <- "\\f\\relax{x} = \\int_{-\\infty}^\\infty \\f\\hat\\xi\\,e^{2 \\pi i \\xi x} \\.d\\xi"
katex> html <- katex_html(math, macros = macros)
katex> mathml <- katex_mathml(math, macros = macros)