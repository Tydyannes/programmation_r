brutToNet3 <- function(salaire,contrat,taux = 0.075,temps = 1)
{ if (taux < 0 | taux > 1)
    {return("Error : rate and time must be in range(0,100)")}
  if (temps < 0 | temps > 1)
    {return("Error : rate and time must be in range(0,100)")}
  calcul <- (salaire * (1-taux)) * temps
  if (contrat == "cadre")
    {calcul2 <- calcul - calcul * 0.25
    calcul1 <- salaire - salaire * 0.25
    return(list(calcul1,calcul2))}
  if (contrat == "non-cadres")
    {calcul2 <- calcul - calcul * 0.22
    calcul1 <- salaire - salaire * 0.22
    return(list(calcul1,calcul2))}
  else {return("Error : contract unknown")}
}
brutToNet3(1000,"non-cadres")

