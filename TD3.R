install.packages("readxl")
library(readxl)

quiz1 <- read.csv(file = "quiz1.csv",header = TRUE,sep = ";",dec = ".")
quiz2 <- read.csv(file = "quiz2.csv",header = TRUE,sep = "\t", dec = ",")
quiz3 <- read.csv(file = "quiz3.csv",header = FALSE,sep = "|", dec = ".")
quiz4 <- read.csv(file = "quiz4.csv",header = TRUE,sep = ";", dec = ",",row.names = 1)

quiz1 <- cbind(quiz1,numero_quiz = 1)
quiz2 <- cbind(quiz2,numero_quiz = 2)
quiz3 <- cbind(quiz3,numero_quiz = 3)
quiz4 <- cbind(quiz4,numero_quiz = 4)

colnames(quiz3) <- colnames(quiz2)
quizfinal <- rbind(quiz1,quiz2,quiz3,quiz4)

mean(quizfinal$Total.Score..points.)
quantile(quizfinal$Average_time,seq(0,1,0.25))
boxplot(quizfinal$Average_time)
hist(quizfinal$Total.Score..points.)
table(quizfinal$Groupe)
barplot(table(quizfinal$Groupe))
aggregate(x = Groupe~numero_quiz,data = quizfinal, FUN = mean)
boxplot(aggregate(x = Groupe~numero_quiz,data = quizfinal, FUN = mean))
