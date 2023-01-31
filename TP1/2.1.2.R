brutToNet2 <- function(salairemens,contrat)
{
  calcul <- salairemens - salairemens * 0.075
  if (contrat == "cadre")
    {calcul <- calcul - calcul * 0.25
    return(calcul)}
  if (contrat == "non-cadres")
    {calcul <- calcul -calcul * 0.22
    return(calcul)}
  else {return("Error : contract unknown")}
}
brutToNet2(1000,"non-cadres")
