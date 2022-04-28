setwd(dir = '/Users/hasnainlakha/desktop/Uni/honoursproject/finaldata')
vcfdat <- read.table('dgrp_3R_full.vcf',skip=5)
head(vcfdat)

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