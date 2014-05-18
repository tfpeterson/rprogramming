pollutantmean <- function(directory, pollutant, id = 1:332) {
	pollutant.data <- c()
	for(i in seq_along(id)){
		file <- sprintf("%03d.csv",id)
		file <- paste(directory,file[i],sep="/")
		pollutant.temp <- read.csv(file,header=T)
		pollutant.data <- rbind(pollutant.data,pollutant.temp)
		}
	mean(pollutant.data[,pollutant],na.rm=T)
}

#pollutantmean("specdata", "sulfate", 1:10) [1] 4.064
#pollutantmean("specdata","nitrate",23) [1] 1.281
#pollutantmean("specdata","nitrate",70:72) [1] 1.706
