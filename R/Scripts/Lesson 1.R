library(tidyverse)
library(ggplot2)

# Data Set from https://www.kaggle.com/devinanzelmo/dota-2-matches#match.csv
dotaTable <-read.csv("Datasets/Dota 2/match.csv")

TimeByFirstBloodGraph<-ggplot(dotaTable, aes(dotaTable$duration,dotaTable$first_blood_time))+geom_point()
print(TimeByFirstBloodGraph)

TimeByFirstBloodGraph2<-ggplot(dotaTable, aes(dotaTable$duration,dotaTable$first_blood_time, color = dotaTable$radiant_win))+geom_point()
print(TimeByFirstBloodGraph2)

TimeByFirstBloodGraph3<-TimeByFirstBloodGraph2+geom_smooth(method = "lm",se= FALSE)
print(TimeByFirstBloodGraph3)

pdf("Results/lesson1Graphs.pdf")
print(TimeByFirstBloodGraph)
print(TimeByFirstBloodGraph2)
print(TimeByFirstBloodGraph3)
dev.off()
