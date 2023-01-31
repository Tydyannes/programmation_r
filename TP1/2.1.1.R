brutToNet1 <- function(salairemens)
{
  calcul <- salairemens - salairemens * 0.22
  return(calcul)
}
brutToNet1(1000)
