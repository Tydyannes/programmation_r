#EXO 1
#1)
population <- rnorm(10000000,mean = 171,sd = 9)

#2)
mean(population)
sd(population)
oui

#3)
hist(population,probability = T)
oui la courbe d une forme normal

#4)
sum(population >= 190)
x <- 1-pnorm(q = 190,mean = 171,sd = 9)
theo = x *length(population)
theo

#5)
sum(population < 144)
y <- pnorm(q = 144,mean = 171,sd = 9)
theo1 = y * length(population) 
theo1

#EXO 2
#1)
echantillion <- sample(population,100)
mean(echantillion)
sd(echantillion)
oui

#2)
f <- qnorm(p = 0.975)
borne1 <- mean(echantillion) - f * sd(echantillion)/sqrt(100) 
borne1
borne2 <- mean(echantillion) + f * sd(echantillion)/sqrt(100)
borne2

#3)
dataframe <- replicate(1000,sample(population,100))
apply(dataframe,2,mean)
apply(dataframe,2,sd)

#4)
hist(apply(dataframe,2,mean))
Oui la loi normal

#5)
mean(apply(dataframe,2,mean))
sd(apply(dataframe,2,mean))

#6)
sum(apply(dataframe,2,mean) > 172.8)
1 - pnorm(q = 172.8,mean = 171, sd = 9)
(1 - pnorm(q = 172.8,mean = mean(apply(dataframe,2,mean)), sd = sd(apply(dataframe,2,mean)))) * 1000


#EXO 3
#1)
moyenne_echantillon <- function(V,n)
{sample(V,n)
  moyenne_echantillon <- mean(sample(V,n,replace = T))
  }

#2)
moyennes_20 <- replicate(1000,moyenne_echantillon(population,20))
moyennes_30 <- replicate(1000,moyenne_echantillon(population,30))
moyennes_50 <- replicate(1000,moyenne_echantillon(population,50))
moyennes_100 <- replicate(1000,moyenne_echantillon(population,100))
moyennes_500 <- replicate(1000,moyenne_echantillon(population,500))

hist(moyennes_500,xlim = c(161,181))
                         
     