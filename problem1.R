problem1 <- function(filename=NULL, fcnname=NULL, nrange=NULL, nsample=NULL, compile=NULL)
{
  outfilename = paste(filename, '.tex', sep = "")
  tikz(outfilename, standAlone = TRUE)
  
  xbeg = nrange[1]
  xend = nrange[2]
  
  xval = seq(xbeg, xend, length = nsample)
  
  yval = fcnname(xval)
  
  ylabel = paste("$", deparse(substitute(fcnname)), "(x)$", sep = "")
  plot(xval, yval, type = 'l', ylab = ylabel, xlab = '$x$')
  
  dev.off()
  
  if (compile) {
    tools::texi2dvi(outfilename, pdf=T)
  }
  
}