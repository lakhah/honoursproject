#Calculating H1, H2, H12 in 400bp windows

setwd(dir = '/Users/hasnainlakha/desktop/Uni/honoursproject/finaldata')
vcfdat <- read.table('dgrp_3R_full.vcf',skip=5)

#FORMATTING

i=10
repeat {	
vcfdat[,i]<- gsub(vcfdat[,i],pattern='0/0',replacement='0')
vcfdat[,i]<- gsub(vcfdat[,i],pattern='1/1',replacement='1')
vcfdat[,i]<- gsub(vcfdat[,i],pattern='./.',replacement='.')
i <- i+1
if (i > 197) {
break
}
}

vcfdat10 <- vcfdat [,10:197]		#data without headings
haplotypedata <- matrix(data = NA, nrow = floor(nrow(vcfdat10)/400), ncol = 5)		#create matrix for data

#Loop that outputs H1, H2, H12

r<-1
h <- 1 
repeat {
	
	k <- (h + 399)
	haplotypedata[r,1] <- h		#binstart column
	haplotypedata[r,2] <- k		#binend column
	vcfdat400temp <- vcfdat10[h:k,]
	
	vcfdat400temp[vcfdat400temp == "."] <- NA		#replace . with NA
		
	same <- outer(seq_len(ncol(vcfdat400temp)), seq_len(ncol(vcfdat400temp)), 	#which rows/columns are the same excluding NA
    Vectorize(function(x, y) all(vcfdat400temp[, x]==vcfdat400temp[, y], na.rm=TRUE)))	
   	
   	uniquecolumns <- as.matrix(vcfdat400temp[, unique(sapply(apply(same, 2, which), function(x)   	#unique columns excluding NA
   	x[which.min(colSums(is.na(vcfdat400temp))[x])]))])
	uniquehap <- colnames(uniquecolumns)

	hapfreq <- vector(mode='numeric', length=length(vcfdat400temp))
	
	j <- 1
	for(i in 1:ncol(same)) {
	
	if (i == 1) {
	itrue <- which(same[i,i:ncol(same)]) 
	hapfreq[j] <- length(which(same[i,i:ncol(same)]))
	} else {
	itrue <- which(same[i,i:ncol(same)])
	hapfreq[j] <- length(itrue) - length(which(same[i,1:(i-1)]))
	}
		
	hapfreq[j] <- hapfreq[j]/(length(hapfreq))
	
	j <- j+1
	}
	
	hapfreqcomb <- vector(mode='numeric', length=length(hapfreq))
	
	p <- length(hapfreq)
	f <- length(hapfreq)
	
	for(f in (length(hapfreq):1)) {
	
	if ((length(which(same[f,1:(length(hapfreq))]))) == 1) {
	hapfreqcomb[p] <- hapfreq[f]
	} else {
	comb <- which(same[f,1:ncol(same)])
	hapfreqcomb[comb[1]] <- hapfreq [p] + hapfreqcomb[comb[1]]
	}
	
	f <- f-1
	p <- p-1
	}
	
	hapfreqcomb <- hapfreqcomb[! hapfreqcomb %in% c(0.00)]
	
	haplotypedata[r,3] <- sum((hapfreqcomb)^2)		#H1
	hapfreqcomb <- sort(hapfreqcomb, decreasing=TRUE)
	hapfreqexc <- hapfreqcomb[-1] 
	haplotypedata[r,4] <- sum((hapfreqexc)^2)		#H2
	haplotypedata[r,5] <- sum((hapfreqcomb)^2) + 2*((hapfreqcomb[1])*(hapfreqcomb[2]))		#H12
	
	h <- (h + 400)
	if (h > nrow(vcfdat) - 400) {
		break
	}
	
	r <- r+1
}

HD <- as.data.frame(haplotypedata)		#turn into dataframe
colnames(HD) <- c("bin_start","bin_end","H1","H2","H12")		#column names

library(tidyverse)

#H2/H1

HD <- mutate(
		HD,
		(V6 = H2 / H1),
		)
		
colnames(HD) <- c("bin_start","bin_end","H1","H2","H12","H2/H1")

write.table(HD, file = "haplotypedata_3R.vcf")

