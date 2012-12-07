problem1 <- function(filename=NULL, fcnname=NULL, nrange=NULL, nsample=NULL, compile=NULL)
{
  require("tikzDevice")
  outfilename = paste(filename, '.tex', sep = "")
 
  xbeg = nrange[1]
  xend = nrange[2]
  
  xval = seq(xbeg, xend, length = nsample)
  
  yval = fcnname(xval)
  
  tikz(outfilename, standAlone = TRUE)
  
  ylabel = paste("$", deparse(substitute(fcnname)), "(x)$", sep = "")
  plot(xval, yval, type = 'l', ylab = ylabel, xlab = '$x$')
  
  dev.off()
  
  if (compile) {
    tools::texi2dvi(outfilename, pdf=T)
  }
  
}