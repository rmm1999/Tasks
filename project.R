setwd("C:\\Users\\12345\\Desktop\\Evolution")
#Data <- read.csv("lizard_data.csv")
Data <- read.csv("project_data.csv")

head(Data)

Data$Season <- gsub("early", "Early", Data$Season)

Surv <- tapply(Data$Survival, Data$Season, function(x) sum(x)/length(x))

par(mar=c(4,5,1,1), las=1, mgp=c(2.5, 0.25, 0), tck=-0.01)
barplot(Surv, names.arg = c("Early", "Late"), col="white")
