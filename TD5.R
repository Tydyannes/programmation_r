df <- read.csv(file = "google.csv",head = T,sep = "\t", dec = ".")

data("iris")

par(mfrow=c(1,2)) #fenêtre sur une ligne et deux colonnes
plot(iris$Sepal.Length,iris$Sepal.Width)
plot(iris$Petal.Length,iris$Petal.Width)
par(mfrow=c(1,1))

plot(x = iris$Sepal.Length,y = iris$Sepal.Width,
     xlab = "Sepal Length",ylab = "Sepal Width") #nom des axes

#Ajouter des éléments
plot(x = iris$Sepal.Length,y = iris$Sepal.Width, 
     xlim = c(4,9),ylim = c(1,5),
     xlab = "Sepal Length",ylab = "Sepal Width")

#Ajouter un titre
title(main = "Sepal Width and Sepal Length")

#Ajouter un sous titre
mtext(text = "(Source : Iris)",side=4)

#Ajouter des lignes
abline(h = 3)
abline(v = 6)

#Ajouter du texte
text(x = 5,y = 1.5,labels = "Groupe 1")
text(x = 5,y = 4.5,labels = "Groupe 2")
text(x = 7,y = 4.5,labels = "Groupe 3")
text(x = 7,y = 2,labels = "Groupe 4")

#Ajouter des points
points(x = c(9,9,9),y = c(4,4.5,5))

plot(x = iris$Sepal.Length,y = iris$Sepal.Width, 
     xlim = c(4,9),ylim = c(1,5),
     xlab = "Sepal Length",ylab = "Sepal Width",
     col = iris$Species, pch = 19 )

title(main = "Imadou on va pas en boite", 
      cex.main = 2,font.main=4, col.main= "red")

mtext(text = "(Source : Iris)",side=4,  font=2)

abline(h = 3 , lty = 3 , lwd = 4)
abline(v = 6 , lty = 3 , lwd = 2)

text(x = 5,y = 1.5,labels = "Groupe 1", col = 3)
text(x = 5,y = 4.5,labels = "Groupe 2", col = 2)
text(x = 7,y = 4.5,labels = "Groupe 3", col = 4)
text(x = 7,y = 2,labels = "Groupe 4", col = 5)

points(x = c(9,9,9),y = c(4,4.5,5), pch = 4 , col = c("black","green","green"))

legend(x = "bottomright", legend=levels(iris$Species),
       col=c(1:3), pch = 19, cex=0.8)

legend(x = 6.5, y=1.5, legend="points \n supplémentaires",
       pch = 4, cex=0.8 , box.lty=0)

plot(x = iris$Sepal.Length,y = iris$Sepal.Width, 
     col = c("blue"))
plot(x = iris$Sepal.Length,y = iris$Sepal.Width, 
     col = 2)

plot(x = iris$Sepal.Length,y = iris$Sepal.Width, 
     col = iris$Species, pch  = 8)

legend(x = "bottomright", legend=levels(iris$Species),
       col=c(1:3), pch = 19, cex=0.8)
