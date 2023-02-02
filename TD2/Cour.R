install.packages("questionr")
library(questionr)
data(hdv2003)

hdv2003$id
hdv2003[4,2] # 6 premières lignes
View(hdv2003$id)
head(hdv2003$nivetud)
head(hdv2003[,4],1)

nrow(hdv2003) # nombres de lignes
ncol(hdv2003) # nombre de colones
colnames(hdv2003) # nom des colones
str(hdv2003) # nature de chaque colones

tail(hdv2003) # 6 dernières lignes

hdv2003$minutes.tv <- hdv2003$heures.tv * 60 # crétation d'une nouvelle variable
hdv2003 <- hdv2003[,-21] # écrasement de la base de donnée en supprimant la 21ème colone

min(hdv2003$age) # min
max(hdv2003$age) # max
range(hdv2003$age) # intervalle de la variable
mean(hdv2003$age) # Calcul moyenne
mean(hdv2003$heures.tv, na.rm = T) #Calcul moyenne avec valeurs manquantes

sum(is.na(hdv2003$heures.tv)) # Nombres des valeurs manquantes

var(hdv2003$age) # Calcul de la variance
sd(hdv2003$age) # Calcul de l'écart-type
median(hdv2003$age) # Calcul de la médiane
quantile(hdv2003$age, c(0,0.25,0.5,0.75,1)) # calcul de quantile avec un vecteur
quantile(hdv2003$age, seq(0,1,0.1)) # Calcul de quantile avec une séquence

boxplot(hdv2003$age)
hist(hdv2003$age) # Graphique histogramme
hist(hdv2003$age,breaks = 20) # Graphique histogramme en modifiant l'écart
hist(hdv2003$age,main = "Coucou") # Graphique histogramme en modifiant le titre

#Variables Qualitatives

table(hdv2003$sexe) # Répartition de la variable "sexe" en effectif
prop.table(table(hdv2003$sexe)) # Répartition de la variable "sexe" en pourcentage
sort(table(hdv2003$sexe), decreasing = T) # Ordre décroissant
barplot(sort(table(hdv2003$sexe), decreasing = T),horiz = T)

pie(table(hdv2003$sexe)) # diagramme circulaire