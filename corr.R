corr <- function(directory, threshold = 0) {
	corrs <- c()
	corrs.cases <- c()
	for(i in seq_along(1:332)){
		file <- sprintf("%03d.csv",i)
		file <- paste(directory,file,sep="/")
		pollutant.temp <- read.csv(file,header=T)
		if(sum(complete.cases(pollutant.temp)) > threshold) {
			pollutant.temp <- pollutant.temp[complete.cases(pollutant.temp),2:3]
			corrs <- cor(pollutant.temp[,1],pollutant.temp[,2])
			corrs.cases <- append(corrs.cases,corrs)}
		}
	corrs.cases
}


#cr <- corr("specdata", 150)
#head(cr)
## [1] -0.01896 -0.14051 -0.04390 -0.06816 -0.12351 -0.07589
#summary(cr)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.2110 -0.0500  0.0946  0.1250  0.2680  0.7630
#cr <- corr("specdata", 400)
#head(cr)
## [1] -0.01896 -0.04390 -0.06816 -0.07589  0.76313 -0.15783
#summary(cr)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.1760 -0.0311  0.1000  0.1400  0.2680  0.7630
#cr <- corr("specdata", 5000)
#summary(cr)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## 
#length(cr)
## [1] 0
#cr <- corr("specdata")
#summary(cr)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -1.0000 -0.0528  0.1070  0.1370  0.2780  1.0000
#length(cr)
## [1] 323


  