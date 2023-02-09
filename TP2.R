# Exercice 1 : Importer les données : 

# a. Importez le jeu de données pokemon.xlsx à l’aide du package readxl.

install.packages("readxl")
library(readxl)
setwd("~/GitHub/programmation_r/TP2")
df <- read_excel( path = "pokemon.xlsx", sheet = "pokemon")

# b. Combien de lignes, colonnes sont présentes dans ce dataset (utilisez les fonctions adaptées) ?

nrow(df)
ncol(df)

#   c. Affichez le nom des colonnes.

colnames(df)

# d. Affichez le type des colonnes avec la fonction adaptée.

str(df)

# e. On souhaite analyser les variables generation, is_legendary, et type en tant que variables qualitatives. Modifier le type de ces variables pour les transformer en type factor.

df$is_legendary <- as.factor(df$is_legendary)
df$generation <- as.factor(df$generation)
df$type <- as.factor(df$type)

# f. Combien de niveaux (levels) sont présents dans ces variables ?

length(levels(df$is_legendary))
length(levels(df$generation))
length(levels(df$type))

#   g. Affichez un résumé des données avec la fonction adaptée.

summary(df)


# Exercice 2 : Statistiques descriptives : 

# a. Déterminer la moyenne de la variable weight_kg.

mean(df$weight_kg, na.rm = T)

# b. Déterminer la médiane de la variable weight_kg.

median(df$weight_kg, na.rm = T)

# c. Déterminer les quartiles de la variable height_m.

quantile(df$height_m, na.rm = T)

# d. Déterminer les déciles de la variable height_m.

quantile(df$height_m, seq(0, 1, 0.1), na.rm = T)

# e. Déterminer la variance et l’écart-type de la variable weight_kg.

var(df$weight_kg, na.rm = T)
sd(df$weight_kg, na.rm = T)

# f. Déterminer un tri à plat pour compter les effectifs des modalités de chaque variable factor en triant
# chaque sortie par ordre décroissant.

sort(table(df$is_legendary), decreasing = T)
sort(table(df$generation), decreasinf = T)
sort(table(df$type), decreasing = T)


# Exercice 3 : Tris et Selections

# a. Sélectionnez la colonne nom et is_legendary.

requete0 <- df[c("nom","is_legendary")]
dim(requete0)

# b. Sélectionnez les 50 premières lignes et les deux premières colonnes.

requete1 <- df[1:50,1:2]
dim(requete1)

# c. Sélectionnez les 10 premières lignes et toutes les colonnes.

requete2 <- df[1:10,]
dim(requete2)

# d. Sélectionnez toutes les colonnes sauf la dernière.

requete3 <- df[-10]
dim(requete3)

# e. Triez le dataset par ordre alphabétique et afficher le nom du pokemon dela première ligne.

requete4 <- order(df$nom,decreasing = F)
df <- df[requete4,]
requete5 <- df$nom[1]
requete5

# f. Triez le dataset par weight_kg en ordre décroissant, et afficher le nom du pokemon de la première ligne

requete6 <- order(df$weight_kg, decreasing = T)
df <- df[requete6,]
requete7 <- df$nom[1]
requete7

# g. Triez le dataset par attack en ordre décroissant puis par speed en ordre croissant, et afficher le
# nom des pokemons des 10 premières lignes.

requete8 <- order(-df$attack,df$speed)
df <- df[requete8,]
requete10 <- df$nom[1:10]
requete10

# Exercice 4 : Tris et Filtres

# a. Filtrez sur les pokemons qui ont 150 ou plus d’attack puis trier le résultat par ordre décroissant d’attack.

requete11 <- order(df$attack,decreasing = T)
df <- df[requete11,]
requete12 <- df$nom[1:7]
requete12


# b. Filtrez sur les pokemons de type dragon,ghost,psychic et dark

requete13 <- c("dark","ghost","dragon","psychic")
subset(df,df$type %in% requete13,)


# c. Filtrez sur les pokemons de type fire avec plus de 100 d’attack, puis trier le résultat par ordre décroissant d’attack.


requete14 <- c("fire")
requete15 <- subset(df,df$type %in% requete14)
requete16 <- subset(requete15,requete15$attack > 100)
requete17 <- order(requete16$attack, decreasing = T)
requete18 <- requete16$nom[requete17]
requete18

# d. Filtrez sur les pokemons qui ont entre 100 et 150 de speed. Les trier par speed décroissant.

requete19 <- subset(df,df$speed >= 100)
requete20 <- subset(requete19,requete19$speed <= 150)
requete21 <- order(requete19$speed, decreasing = T)
requete22 <- requete20[requete21]
requete22

# e. Filtrez sur les pokémons qui ont des valeurs manquantes sur la variable height_m.

subset(df,df$height_m %in% c(NA))

# f. Filtrez sur les pokemons qui ont des valeurs renseignées à la fois pour la variable weight_kg et la variable height.


requete23 <- subset(df,df$weight_kg >= 0)
subset(requete23,requete23$height_m >= 0)

# g. Filtrez sur les pokemons pesant plus de 250 kg et affichez le résultat pour vérifier.

subset(df,df$weight_kg > 250)
