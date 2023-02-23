set.seed(2023) # pseudo aléatoire car tous les memes
sample(1:100,1)
#PROBA DISCRETE
x <- sample(x=c(1,2,3,4,5,6),size=100,replace=TRUE, #replace = remise
            prob = c(1/6,1/6,1/6,1/6,1/6,1/6))
Fx <- ecdf(x)
plot(Fx, xlab = "X",
     ylab = "F(x)",ylim = c(0,1),
     main = "Fonction de répartition empirique")

#BINOMIALE
#Simulation de 100 réalisations d'une loi Binomiale de 10 épreuves de Bernouilli
x1 <- rbinom(100,size=10,prob=0.8)
#tri a plat des valeurs de X
freq_X <- prop.table(table(x))
View(freq_X)
#diagramme
barplot(freq_X,xlab="x",ylab="P(X <= x)",
        main = "Répartition de la valeur de x")
#colors()
# proba d'avoir 8 reussite sur 10 essai
pbinom(q=8,size=10,prob=0.8)
# loi cumulative
cumsum(freq_X)
# inverse ((P <= X) = 0,62)
qbinom(p=0.62,size=10,prob=0.8)

#POISSON
x2 <- rpois(n=1000,lambda = 2)
freq_X2 <- prop.table(table(x2))
plot(freq_X2)
#proba
ppois(q=2,lambda = 2)
cumsum(freq_X2)
qpois(p=0.67,lambda = 2)

#UNIFORME CONTINUE
x3 <- runif(1000,min=0,max=10)
hist(x3,probability = TRUE,ylim = c(0,0.15))
#proba (P(X <= 8))
punif(q = 8, min=0, max=10)
# inverse (P(X <= x) = 0,62)
qunif(p = 0.8, min=0, max=10)
#densité
dunif(x = 0:10, min = 0, max = 10)

#NORMALE
x4 <- rnorm(n = 1000,mean = 5,sd = 2)
hist(x4, main="Distribution d'une loi normale",
     probability = TRUE)
#proba (P(X <= 1.69))
pnorm(q = 1.96,mean = 0,sd = 1)
#inverse (P(X <= x) = 0.975)
qnorm(p = 0.975,mean = 0,sd = 1)
#densité
dnorm(x4,mean = 0,sd = 1)
#QQplot
qqnorm(y = x4)

#ex
set.seed(1515)
#1)
x10 <- rnorm(100,mean = 7, sd = 2)
#2)
hist(x10,main = "Distribution d'une loi Normal", probability = T)
#3)
pnorm(q = 9,mean = 7, sd = 2)
#4)
1 - pnorm(q = 9,mean= 7, sd = 2)
#5)
qqnorm(y = x10)

# Ces formule permettent d'appliquer une fonction sur l'ensemble des colognes et lignes d'une base de données
# sapply() renvoie un vecteur
# lapply() renvoie une liste
# tapply()