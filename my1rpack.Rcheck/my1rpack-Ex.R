pkgname <- "my1rpack"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('my1rpack')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("Problem2")
### * Problem2

flush(stderr()); flush(stdout())

### Name: Problem2
### Title: Winter Olympics: which country win the most medals?
### Aliases: 'Data for Problem2'
### Keywords: datasets

### ** Examples

data(problem2)



cleanEx()
nameEx("my1rpack-package")
### * my1rpack-package

flush(stderr()); flush(stdout())

### Name: my1rpackage
### Title: My first R package
### Aliases: -package
### Keywords: package

### ** Examples

require(my1rpack)

problem1('bmw1series', dnorm, c(-5, 5), 10, TRUE)

problem2



cleanEx()
nameEx("problem1")
### * problem1

flush(stderr()); flush(stdout())

### Name: problem1
### Title: Function for generating normal plots
### Aliases: problem1

### ** Examples

problem1('bmw1series', dnorm, c(-5, 5), 10, TRUE)



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
