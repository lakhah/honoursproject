#Calculating H1, H2, H12 in 400bp windows

setwd(dir = '/Users/hasnainlakha/desktop/Uni/honoursproject')
vcfdat <- read.table('dgrp_3R_test.vcf',skip=5)

#FORMATTING REQUIRED

vcfdat10 <- vcfdat [,10:59]		#data without headings

haplotypedata <- matrix(data = NA, nrow = floor(nrow(vcfdat10)/400), ncol = 5)		#create matrix for data

#Loop that outputs H1, H2, H12

h <- 1 
r<-1
repeat {
	k <- (h + 399)
	haplotypedata[r,1] <- h		#binstart column
	haplotypedata[r,2] <- k		#binend column
	vcfdat400temp <- vcfdat10[h:k,]
	
		#replace . with NA
		vcfdat400temp[vcfdat400temp == "."] <- NA		
		
		#which rows/columns are the same excluding NA
		same <- outer(seq_len(ncol(vcfdat400temp)), seq_len(ncol(vcfdat400temp)), 	
        Vectorize(function(x, y) all(vcfdat400temp[, x]==vcfdat400temp[, y], na.rm=TRUE)))	
   		
   		#unique columns excluding NA
   		uniquecolumns <- as.matrix(vcfdat400temp[, unique(sapply(apply(same, 2, which), function(x) 
   		x[which.min(colSums(is.na(vcfdat400temp))[x])]))])
   		uniquecolumns[is.na(uniquecolumns)] <- "."
		uniquehap <- colnames(uniquecolumns)


	hapfreq <- vector(mode='numeric', length=length(vcfdat400temp))
	hapfreqcomb <- vector(mode='numeric', length=length(uniquehap))
	
	j <- 1
	for(i in 1:ncol(same)){
	
	if (i == 1) {
	itrue <- which(same[i,i:ncol(same)]) 
	hapfreq[j] <- length(which(same[i,i:ncol(same)]))
	} else {
	itrue <- which(same[i,i:ncol(same)])
	hapfreq[j] <- length(itrue) - length(which(same[i,1:(i-1)]))
	}
		
	hapfreq[j] <- hapfreq[j]/50
	j <- j+1
	
	}
	
	haplotypedata[r,3] <- sum((hapfreq)^2)		#H1
	sort(hapfreq,decreasing=T)
	hapfreqexc <- hapfreq[-1] 
	haplotypedata[r,4] <- sum((hapfreqexc)^2)		#H2
	haplotypedata[r,5] <- sum((hapfreq)^2) + 2*((hapfreq[1])*(hapfreq[2]))		#H12
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




	#
	#for(i in uniquehap){
		#hapfreq[j] <- sum(colSums(eval(parse(text=paste0('vcfdat400temp$',i)))==vcfdat400temp, na.rm=TRUE)==nrow(na.omit(vcfdat400temp))) 
		
		#uniqcols <- colnames(vcfdat400temp[, same[,i]])
		#if (is.null(uniqcols)){
		#hapfreq[j] <- 1
		#} else {
		#for(c in colnames(vcfdat400temp[, same[,i]])){
		#samesub <- same[i:nrow(same),]
		#if (i != ncol(same)) {
		#T <- as.data.frame(table(samesub[,i]))
		#hapfreq[j] <- T[2,2] - 1
		#} else {
		#T <- as.data.frame(table(samesub[nrow(same)]))	
		#hapfreq[j] <- T[1,2] - 1
		#}}}