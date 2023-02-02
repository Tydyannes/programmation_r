Exercice 1 : 
  
install.packages(#questionr")
data("hdv2003")
d <- hdv2003
dim(hdv2003)
colnames(hdv2003)
    
Exercice 2 : 
      
min(hdv2003$heures.tv, na.rm = T)
max(hdv2003$heures.tv, na.rm = T)
mean(hdv2003$heures.tv, na.rm = T)    
median(hdv2003$heures.tv, na.rm = T)
sd(hdv2003$heures.tv, na.rm = T)
hist(d$heures.tv, breaks = 10)

Exercice 3 :

table(d$trav.imp)
prop.table(table(d$trav.imp))
sum(is.na(d$trav.imp))
barplot(table(d$trav.imp))
