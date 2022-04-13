setwd(dir = '/Users/hasnainlakha/desktop/Uni/honoursproject')
vcfdat <- read.table('dgrp_3R_test.vcf',skip=5)
head(vcfdat)
vcfdat[,10]<- gsub(vcfdat[,10],pattern='0/0',replacement='0')
vcfdat[,10]<- gsub(vcfdat[,10],pattern='1/1',replacement='1')
vcfdat[,10]<- gsub(vcfdat[,10],pattern='./.',replacement='.')
vcfdat[,11]<- gsub(vcfdat[,11],pattern='0/0',replacement='0')
vcfdat[,11]<- gsub(vcfdat[,11],pattern='1/1',replacement='1')
vcfdat[,11]<- gsub(vcfdat[,11],pattern='./.',replacement='.')

vcfdat[,12]<- gsub(vcfdat[,12],pattern='0/0',replacement='0')
vcfdat[,12]<- gsub(vcfdat[,12],pattern='1/1',replacement='1')
vcfdat[,12]<- gsub(vcfdat[,12],pattern='./.',replacement='.')

vcfdat[,13]<- gsub(vcfdat[,13],pattern='0/0',replacement='0')
vcfdat[,13]<- gsub(vcfdat[,13],pattern='1/1',replacement='1')
vcfdat[,13]<- gsub(vcfdat[,13],pattern='./.',replacement='.')

vcfdat[,14]<- gsub(vcfdat[,14],pattern='0/0',replacement='0')
vcfdat[,14]<- gsub(vcfdat[,14],pattern='1/1',replacement='1')
vcfdat[,14]<- gsub(vcfdat[,14],pattern='./.',replacement='.')

vcfdat[,15]<- gsub(vcfdat[,15],pattern='0/0',replacement='0')
vcfdat[,15]<- gsub(vcfdat[,15],pattern='1/1',replacement='1')
vcfdat[,15]<- gsub(vcfdat[,15],pattern='./.',replacement='.')

vcfdat[,16]<- gsub(vcfdat[,16],pattern='0/0',replacement='0')
vcfdat[,16]<- gsub(vcfdat[,16],pattern='1/1',replacement='1')
vcfdat[,16]<- gsub(vcfdat[,16],pattern='./.',replacement='.')

vcfdat[,17]<- gsub(vcfdat[,17],pattern='0/0',replacement='0')
vcfdat[,17]<- gsub(vcfdat[,17],pattern='1/1',replacement='1')
vcfdat[,17]<- gsub(vcfdat[,17],pattern='./.',replacement='.')

vcfdat[,18]<- gsub(vcfdat[,18],pattern='0/0',replacement='0')
vcfdat[,18]<- gsub(vcfdat[,18],pattern='1/1',replacement='1')
vcfdat[,18]<- gsub(vcfdat[,18],pattern='./.',replacement='.')

vcfdat[,19]<- gsub(vcfdat[,19],pattern='0/0',replacement='0')
vcfdat[,19]<- gsub(vcfdat[,19],pattern='1/1',replacement='1')
vcfdat[,19]<- gsub(vcfdat[,19],pattern='./.',replacement='.')

vcfdat[,20]<- gsub(vcfdat[,20],pattern='0/0',replacement='0')
vcfdat[,20]<- gsub(vcfdat[,20],pattern='1/1',replacement='1')
vcfdat[,20]<- gsub(vcfdat[,20],pattern='./.',replacement='.')
vcfdat[,21]<- gsub(vcfdat[,21],pattern='0/0',replacement='0')
vcfdat[,21]<- gsub(vcfdat[,21],pattern='1/1',replacement='1')
vcfdat[,21]<- gsub(vcfdat[,21],pattern='./.',replacement='.')

vcfdat[,22]<- gsub(vcfdat[,22],pattern='0/0',replacement='0')
vcfdat[,22]<- gsub(vcfdat[,22],pattern='1/1',replacement='1')
vcfdat[,22]<- gsub(vcfdat[,22],pattern='./.',replacement='.')

vcfdat[,23]<- gsub(vcfdat[,23],pattern='0/0',replacement='0')
vcfdat[,23]<- gsub(vcfdat[,23],pattern='1/1',replacement='1')
vcfdat[,23]<- gsub(vcfdat[,23],pattern='./.',replacement='.')

vcfdat[,24]<- gsub(vcfdat[,24],pattern='0/0',replacement='0')
vcfdat[,24]<- gsub(vcfdat[,24],pattern='1/1',replacement='1')
vcfdat[,24]<- gsub(vcfdat[,24],pattern='./.',replacement='.')

vcfdat[,25]<- gsub(vcfdat[,25],pattern='0/0',replacement='0')
vcfdat[,25]<- gsub(vcfdat[,25],pattern='1/1',replacement='1')
vcfdat[,25]<- gsub(vcfdat[,25],pattern='./.',replacement='.')

vcfdat[,26]<- gsub(vcfdat[,26],pattern='0/0',replacement='0')
vcfdat[,26]<- gsub(vcfdat[,26],pattern='1/1',replacement='1')
vcfdat[,26]<- gsub(vcfdat[,26],pattern='./.',replacement='.')

vcfdat[,27]<- gsub(vcfdat[,27],pattern='0/0',replacement='0')
vcfdat[,27]<- gsub(vcfdat[,27],pattern='1/1',replacement='1')
vcfdat[,27]<- gsub(vcfdat[,27],pattern='./.',replacement='.')

vcfdat[,28]<- gsub(vcfdat[,28],pattern='0/0',replacement='0')
vcfdat[,28]<- gsub(vcfdat[,28],pattern='1/1',replacement='1')
vcfdat[,28]<- gsub(vcfdat[,28],pattern='./.',replacement='.')

vcfdat[,29]<- gsub(vcfdat[,29],pattern='0/0',replacement='0')
vcfdat[,29]<- gsub(vcfdat[,29],pattern='1/1',replacement='1')
vcfdat[,29]<- gsub(vcfdat[,29],pattern='./.',replacement='.')

vcfdat[,30]<- gsub(vcfdat[,30],pattern='0/0',replacement='0')
vcfdat[,30]<- gsub(vcfdat[,30],pattern='1/1',replacement='1')
vcfdat[,30]<- gsub(vcfdat[,30],pattern='./.',replacement='.')
vcfdat[,31]<- gsub(vcfdat[,31],pattern='0/0',replacement='0')
vcfdat[,31]<- gsub(vcfdat[,31],pattern='1/1',replacement='1')
vcfdat[,31]<- gsub(vcfdat[,31],pattern='./.',replacement='.')

vcfdat[,32]<- gsub(vcfdat[,32],pattern='0/0',replacement='0')
vcfdat[,32]<- gsub(vcfdat[,32],pattern='1/1',replacement='1')
vcfdat[,32]<- gsub(vcfdat[,32],pattern='./.',replacement='.')

vcfdat[,33]<- gsub(vcfdat[,33],pattern='0/0',replacement='0')
vcfdat[,33]<- gsub(vcfdat[,33],pattern='1/1',replacement='1')
vcfdat[,33]<- gsub(vcfdat[,33],pattern='./.',replacement='.')

vcfdat[,34]<- gsub(vcfdat[,34],pattern='0/0',replacement='0')
vcfdat[,34]<- gsub(vcfdat[,34],pattern='1/1',replacement='1')
vcfdat[,34]<- gsub(vcfdat[,34],pattern='./.',replacement='.')

vcfdat[,35]<- gsub(vcfdat[,35],pattern='0/0',replacement='0')
vcfdat[,35]<- gsub(vcfdat[,35],pattern='1/1',replacement='1')
vcfdat[,35]<- gsub(vcfdat[,35],pattern='./.',replacement='.')

vcfdat[,36]<- gsub(vcfdat[,36],pattern='0/0',replacement='0')
vcfdat[,36]<- gsub(vcfdat[,36],pattern='1/1',replacement='1')
vcfdat[,36]<- gsub(vcfdat[,36],pattern='./.',replacement='.')

vcfdat[,37]<- gsub(vcfdat[,37],pattern='0/0',replacement='0')
vcfdat[,37]<- gsub(vcfdat[,37],pattern='1/1',replacement='1')
vcfdat[,37]<- gsub(vcfdat[,37],pattern='./.',replacement='.')

vcfdat[,38]<- gsub(vcfdat[,38],pattern='0/0',replacement='0')
vcfdat[,38]<- gsub(vcfdat[,38],pattern='1/1',replacement='1')
vcfdat[,38]<- gsub(vcfdat[,38],pattern='./.',replacement='.')

vcfdat[,39]<- gsub(vcfdat[,39],pattern='0/0',replacement='0')
vcfdat[,39]<- gsub(vcfdat[,39],pattern='1/1',replacement='1')
vcfdat[,39]<- gsub(vcfdat[,39],pattern='./.',replacement='.')

vcfdat[,40]<- gsub(vcfdat[,40],pattern='0/0',replacement='0')
vcfdat[,40]<- gsub(vcfdat[,40],pattern='1/1',replacement='1')
vcfdat[,40]<- gsub(vcfdat[,40],pattern='./.',replacement='.')
vcfdat[,41]<- gsub(vcfdat[,41],pattern='0/0',replacement='0')
vcfdat[,41]<- gsub(vcfdat[,41],pattern='1/1',replacement='1')
vcfdat[,41]<- gsub(vcfdat[,41],pattern='./.',replacement='.')

vcfdat[,42]<- gsub(vcfdat[,42],pattern='0/0',replacement='0')
vcfdat[,42]<- gsub(vcfdat[,42],pattern='1/1',replacement='1')
vcfdat[,42]<- gsub(vcfdat[,42],pattern='./.',replacement='.')

vcfdat[,43]<- gsub(vcfdat[,43],pattern='0/0',replacement='0')
vcfdat[,43]<- gsub(vcfdat[,43],pattern='1/1',replacement='1')
vcfdat[,43]<- gsub(vcfdat[,43],pattern='./.',replacement='.')

vcfdat[,44]<- gsub(vcfdat[,44],pattern='0/0',replacement='0')
vcfdat[,44]<- gsub(vcfdat[,44],pattern='1/1',replacement='1')
vcfdat[,44]<- gsub(vcfdat[,44],pattern='./.',replacement='.')

vcfdat[,45]<- gsub(vcfdat[,45],pattern='0/0',replacement='0')
vcfdat[,45]<- gsub(vcfdat[,45],pattern='1/1',replacement='1')
vcfdat[,45]<- gsub(vcfdat[,45],pattern='./.',replacement='.')

vcfdat[,46]<- gsub(vcfdat[,46],pattern='0/0',replacement='0')
vcfdat[,46]<- gsub(vcfdat[,46],pattern='1/1',replacement='1')
vcfdat[,46]<- gsub(vcfdat[,46],pattern='./.',replacement='.')

vcfdat[,47]<- gsub(vcfdat[,47],pattern='0/0',replacement='0')
vcfdat[,47]<- gsub(vcfdat[,47],pattern='1/1',replacement='1')
vcfdat[,47]<- gsub(vcfdat[,47],pattern='./.',replacement='.')

vcfdat[,48]<- gsub(vcfdat[,48],pattern='0/0',replacement='0')
vcfdat[,48]<- gsub(vcfdat[,48],pattern='1/1',replacement='1')
vcfdat[,48]<- gsub(vcfdat[,48],pattern='./.',replacement='.')

vcfdat[,49]<- gsub(vcfdat[,49],pattern='0/0',replacement='0')
vcfdat[,49]<- gsub(vcfdat[,49],pattern='1/1',replacement='1')
vcfdat[,49]<- gsub(vcfdat[,49],pattern='./.',replacement='.')

vcfdat[,50]<- gsub(vcfdat[,50],pattern='0/0',replacement='0')
vcfdat[,50]<- gsub(vcfdat[,50],pattern='1/1',replacement='1')
vcfdat[,50]<- gsub(vcfdat[,50],pattern='./.',replacement='.')
vcfdat[,51]<- gsub(vcfdat[,51],pattern='0/0',replacement='0')
vcfdat[,51]<- gsub(vcfdat[,51],pattern='1/1',replacement='1')
vcfdat[,51]<- gsub(vcfdat[,51],pattern='./.',replacement='.')

vcfdat[,52]<- gsub(vcfdat[,52],pattern='0/0',replacement='0')
vcfdat[,52]<- gsub(vcfdat[,52],pattern='1/1',replacement='1')
vcfdat[,52]<- gsub(vcfdat[,52],pattern='./.',replacement='.')

vcfdat[,53]<- gsub(vcfdat[,53],pattern='0/0',replacement='0')
vcfdat[,53]<- gsub(vcfdat[,53],pattern='1/1',replacement='1')
vcfdat[,53]<- gsub(vcfdat[,53],pattern='./.',replacement='.')

vcfdat[,54]<- gsub(vcfdat[,54],pattern='0/0',replacement='0')
vcfdat[,54]<- gsub(vcfdat[,54],pattern='1/1',replacement='1')
vcfdat[,54]<- gsub(vcfdat[,54],pattern='./.',replacement='.')

vcfdat[,55]<- gsub(vcfdat[,55],pattern='0/0',replacement='0')
vcfdat[,55]<- gsub(vcfdat[,55],pattern='1/1',replacement='1')
vcfdat[,55]<- gsub(vcfdat[,55],pattern='./.',replacement='.')

vcfdat[,56]<- gsub(vcfdat[,56],pattern='0/0',replacement='0')
vcfdat[,56]<- gsub(vcfdat[,56],pattern='1/1',replacement='1')
vcfdat[,56]<- gsub(vcfdat[,56],pattern='./.',replacement='.')

vcfdat[,57]<- gsub(vcfdat[,57],pattern='0/0',replacement='0')
vcfdat[,57]<- gsub(vcfdat[,57],pattern='1/1',replacement='1')
vcfdat[,57]<- gsub(vcfdat[,57],pattern='./.',replacement='.')

vcfdat[,58]<- gsub(vcfdat[,58],pattern='0/0',replacement='0')
vcfdat[,58]<- gsub(vcfdat[,58],pattern='1/1',replacement='1')
vcfdat[,58]<- gsub(vcfdat[,58],pattern='./.',replacement='.')

vcfdat[,59]<- gsub(vcfdat[,59],pattern='0/0',replacement='0')
vcfdat[,59]<- gsub(vcfdat[,59],pattern='1/1',replacement='1')
vcfdat[,59]<- gsub(vcfdat[,59],pattern='./.',replacement='.')