library(tidyverse)

#https://www.kaggle.com/kemical/kickstarter-projects#ks-projects-201801.csv
kickstarterTable<-read.csv("Datasets/Kickstarters/ks-projects-201801.csv")

ksPlot<-ggplot(kickstarterTable, aes(kickstarterTable$goal,kickstarterTable$pledged))+geom_point()
print(ksPlot)

musicTable<-filter(kickstarterTable, category == "Music")
musicPlot <-ggplot(musicTable, aes(musicTable$goal,musicTable$pledged))+geom_point()

successMusicTable<-filter(musicTable, state == "successful")

successMusicPlot<-ggplot(successMusicTable, aes(successMusicTable$goal,successMusicTable$pledged))+geom_point()
print(successMusicPlot)

pdf("Results/lesson2Graphs.pdf")
print(ksPlot)
print(musicPlot)
print(successMusicPlot)
dev.off()