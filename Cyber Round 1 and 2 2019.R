#Data analysis of Cyber Patriot Cumulative Scores
#Rounds 1 and 2 November 2019
setwd("~/Desktop/RProgramming")
install.packages(c("dplyr", "tidyr", "readr", "readxl"))
library(readr)
library(dplyr)
library(tidyverse)
#Read Cyber Patriot excel csv file
rd2<-read.csv("CPXIIRound22019.csv")
#Inspect rd2 data
tibble(rd2)
#Reaveal typeof data 
typeof(rd2)
#Obtain Open Division
open<-filter(rd2,rd2[,2]=="Open")
#Inspect open
tibble(open)
#Obtain Open Gold Division
open.Gold<-filter(rd2,rd2[,2]=="Open"&rd2[,8]=="Gold")
#Inspect open.MD
tibble(open.Gold)
#Obtain Open Maryland Division
open.MD<-filter(rd2,rd2[,2]=="Open"&rd2[,3]=="MD")
#Inspect open.MD
tibble(open.MD)
#Obtain Open Maryland Gold Division
open.MD.Gold<-filter(rd2,rd2[,2]=="Open"&rd2[,3]=="MD"&rd2[,8]=="Gold")
#Inspect open.MD
tibble(open.MD.Gold)
#Obtain cumulative scores 
open.CumScores<-as.numeric(as.character(open[,7]))
open.Gold.CumScores<-as.numeric(as.character(open.Gold[,7]))
open.MD.CumScores<-as.numeric(as.character(open.MD[,7]))
open.MD.Gold.CumScores<-as.numeric(as.character(open.MD.Gold[,7]))
#Obtain summaries 
summary(open.CumScores)
summary(open.Gold.CumScores)
summary(open.MD.CumScores)
summary(open.MD.Gold.CumScores)
#Create plots
hist(open.CumScores,
     main="Round 1 and 2 Open Cumulative Team Scores",
     xlab="Scores",
     xlim=c(0,700),
     ylab = "Number of Teams",
     col="darkmagenta"
)

hist(open.Gold.CumScores,
     main="Round 1 and 2 Open Gold Cumulative Team Scores",
     xlab="Scores",
     ylab = "Number of Teams",
     col="gold"
)
hist(open.MD.CumScores,
     main="Round 1 and 2 Open Maryland Cumulative Team Scores",
     xlab="Scores",
     ylab = "Number of Teams",
     col="red"
)
hist(open.MD.Gold.CumScores,
     main="Round 1 and 2 Open Maryland Gold Cumulative Team Scores",
     xlab="Scores",
     ylab = "Number of Teams",
     col="green"
)
#End of file

