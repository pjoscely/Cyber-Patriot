#Data analysis of Cyber Patriot Cumulative Scores
#State Round 2019
setwd("~/Desktop/RProgramming")
install.packages("tidyverse")
library(tidyverse)
library(readr)
library(dplyr)
#Read State Round Cyber Patriot csv file
state.rnd<-read.csv("CP-XIIStateRound2019.csv",stringsAsFactors = FALSE)
#Inspect state.rnd data
tibble(state.rnd)
#Obtain Open Division
state.rnd.open<-filter(state.rnd,state.rnd[,2]=="Open")
#Inspect Open Division
tibble(state.rnd.open)
#Obtain Number Open Division Teams
nrow(state.rnd.open)
state.rnd.open.gold<-filter(state.rnd.open,state.rnd.open[,4]=="Gold")
#Obtain Number Open Gold Division Teams
nrow(state.rnd.open.gold)
#Inspect Open Gold Division
tibble(state.rnd.open.gold)
#Obtain Open Gold Advancing Division
state.rnd.open.gold.adv<-filter(state.rnd.open.gold,state.rnd.open.gold[,8]=="Advances to Semifinals")
#Inspect Open Gold Advancing Division
tibble(state.rnd.open.gold.adv)
#Obtain Number Open Gold Division Advancing Teams
nrow(state.rnd.open.gold.adv)
#Obtain Open Gold Not Advancing Division
state.rnd.open.gold.not.adv<-filter(state.rnd.open.gold,state.rnd.open.gold[,8]=="Does Not Advance")
#Inspect Open Gold Division
tibble(state.rnd.open.gold.not.adv)
#Obtain Number Open Gold Division Teams Not Advancing
nrow(state.rnd.open.gold.not.adv)
#Convert to numeric data
open.cum.scores<-as.numeric(as.character(state.rnd.open[,7]))
open.gold.cum.scores<-as.numeric(as.character(state.rnd.open.gold[,7]))
open.gold.cum.scores.adv<-as.numeric(as.character(state.rnd.open.gold.adv[,7]))
open.gold.cum.scores.not.adv<-as.numeric(as.character(state.rnd.open.gold.not.adv[,7]))
#Obtain summaries 
summary(open.cum.scores)
summary(open.gold.cum.scores)
summary(open.gold.cum.scores.adv)
summary(open.gold.cum.scores.not.adv)
#Create plots
#Open Division
hist(open.cum.scores,
     main="2019 State Round Open Cumulative Team Scores",
     xlab="Scores",
     xlim=c(0,400),
     ylab = "Number of Teams",
     col="darkmagenta", breaks = 15
)
#Gold Division
hist(open.gold.cum.scores,
     main="2019 State Round Open Gold Cumulative Team Scores",
     xlab="Scores",
     xlim=c(0,400),
     ylab = "Number of Teams",
     col="gold"
)
#Advancing
hist(open.gold.cum.scores.adv,
     main="2019 State Round Open Gold Advancing Cumulative Team Scores",
     xlab="Scores",
     xlim=c(180,300),
     ylab = "Number of Teams",
     col="green"
)
#Not advancing
hist(open.gold.cum.scores.not.adv,
     main="2019 State Round Open Gold Not Advancing Cumulative Team Scores",
     xlab="Scores",
     xlim=c(0,200),
     ylab = "Number of Teams",
     col="red"
)


