library(tidyverse)

#https://www.kaggle.com/kemical/kickstarter-projects#ks-projects-201801.csv
kickstarterTable<-read.csv("Datasets/Kickstarters/ks-projects-201801.csv")


musicTable<-filter(kickstarterTable, category == "Music")
successMusicTable<-filter(musicTable, state == "successful")

successMusicPlot<-ggplot(successMusicTable, aes(successMusicTable$goal,successMusicTable$pledged))+geom_point()
print(successMusicPlot)
