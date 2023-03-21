df <- read.csv("fastfood.csv", header = T, dec = ",",sep = "\t")

#b)
nrow(df)

#c)
colnames(df)

#d)
summary(df,)

#e)
for (i in  1:ncol(df)) 
  {
  if (is.numeric(df[,i]) == F)
      {df[,i] <- as.factor(df[,i])}
}

#f)
str(df)

#Exercice 2 :
  
#a)
length(unique(df$brands))

#b)
table(df$brands)
barplot(table(df$brands),main = "Répartition du nombre de produit par retaurants",col = "light blue")

#c)
median(df$energy.kcal_value,na.rm = T)
sd(df$energy.kcal_value,na.rm = T)

#d)
boxplot(df$energy.kcal_value)

#e)
head(df[order(df$energy.kcal_value,decreasing = T),c(2,9)],2)

#f)
df[df$product_name_fr == "Salade - Caesar",9] = 268

#g)
quantile(df$energy.kcal_value,na.rm = T,seq(0,1,0.01))

# Exercice 3 :
#a)
requete_a <- df[df$Sandwich == "Oui",]
boxplot(df$energy.kcal_value~df$brands)

#b)
requete_b <- aggregate(df$energy.kcal_value~df$brands,df,FUN = mean)
head(requete_b,1)

#c)
head(order(requete_c$`df$energy.kcal_value`,decreasing = T),5)
