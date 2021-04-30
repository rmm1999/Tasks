setwd("C:\\Users\\12345\\Desktop\\Evolution")
#Data <- read.csv("lizard_data.csv")
Data <- read.csv("new_project_data.csv")

head(Data)

# Edit these to change the point characters
PCHs <- c(15, 16, 1, 5, 17, 18, 20, 6, 2)

# Edit these to change the colors
Colors <- c('#e41a1c','#377eb8','#4daf4a','#984ea3','#ff7f00','#ffff33','#a65628','#f781bf','#999999')

par(mar=c(4,5,1,1), mgp=c(2.5, 0.5, 0), las=1, tck=-0.01)
plot(c(Data$SVL,65), c(Data$Latitude,20), type="n", xlab="Snout Vent Length", ylab="Latitude")

Specs <- unique(Data$Species)
for (i in 1:length(Specs)){
  Chosen <- which(Data$Species == Specs[i])
  points(Data$SVL[Chosen], Data$Latitude[Chosen], pch=PCHs[i], col=Colors[i])
}

legend("topright", col=Colors, pch=PCHs, legend=Specs, bty="n")

