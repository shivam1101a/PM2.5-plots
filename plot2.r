NEI <- readRDS("C:\\Users\\kbec\\Desktop\\Exploratory Data Analysis\\summarySCC_PM25.rds")
SCC <- readRDS("C:\\Users\\kbec\\Desktop\\Exploratory Data Analysis\\Source_Classification_Code.rds")
setwd("C:\\Users\\kbec\\Desktop\\Exploratory Data Analysis\\Assignment 2")
png("plot2.png", width = 480, height = 480)
Baltimore_MARYLAND <- subset(NEI, fips=='24510')
Emissions_BALMA <- tapply(Baltimore_MARYLAND$Emissions, Baltimore_MARYLAND$year, sum)
barplot(Emissions_BALMA, xlab = "Year", ylab = "Total Emissions PM2.5 Tons Baltimore",col = c("RED","BLUE","GREEN","YELLOW"), main = "Baltimore Total PM2.5 Emission From All Sources By Year")
dev.off()
