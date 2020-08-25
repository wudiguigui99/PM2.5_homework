Index <- readRDS("~/Desktop/Homework/Source_Classification_Code.rds")
full_data <- readRDS("~/Desktop/Homework/summarySCC_PM25.rds")


coal_set <- grep("coal", Index$Short.Name, ignore.case = TRUE)

coal_SCC<- Index[coal_set,]$SCC
coal  <- subset(full_data, SCC %in% coal_SCC)
coal_sum <- aggregate(Emissions ~ year, data = coal, sum)

barplot(Emissions ~ year, data = coal_sum, main= "Coal Combustion-related PM2.5 Emissions")

