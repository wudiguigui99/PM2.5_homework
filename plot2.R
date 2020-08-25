Index <- readRDS("~/Desktop/Homework/Source_Classification_Code.rds")
full_data <- readRDS("~/Desktop/Homework/summarySCC_PM25.rds")

Baltimore <- subset(full_data, fips == "24510")

sum_Bal <- aggregate(Emissions ~ year, Baltimore, sum)
barplot(Emissions ~ year,data = sum_Bal, xlab = "year", ylab= "total PM2.5 emission", main ="Baltimore Total PM2.5 Emission")