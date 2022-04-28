#Join H1, H2, H12 with SNP Genome Location

setwd(dir = '/Users/hasnainlakha/desktop/Uni/honoursproject/finaldata')
vcfdat <- read.table('dgrp_3R_full.vcf',skip=5)
stats <- read.table('haplotypedata_3R.vcf')
genloc <- vcfdat[,0:2]
library(dplyr)
genloc <- mutate(genloc, bin_start = row_number())
colnames(genloc) <- c("chr","snp","bin")
genloc1 <- genloc[,2:3]
joined <- merge (genloc1, stats, by.x = 'bin', by.y = 'bin_end')
joined <- merge (genloc1, joined, by.x = 'bin', by.y = 'bin_start')
colnames(joined) <- c("bin_start","snp_start","bin_end","snp_end","H1","H2","H12","H2/H1")

write.csv(joined, file = "combineddata.vcf")

