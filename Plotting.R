#Plotting

setwd(dir = '/Users/hasnainlakha/desktop/Uni/honoursproject/finaldata')
joined <- read.csv(file = "combineddata.vcf")
joined <- joined[,-1]

pdf("CHR3R - H1.pdf", 		#filename
	width = 8,
	height = 8)

plot(x = joined$snp_start, 
	 y = joined$H1,
	 col = "firebrick2",		#colour
	 pch = 20,		#type of symbol
     xlab = "Position (bps)",
     ylab = "H1",
     main = "H1")
     
text(x = c(0.92e+07), y = c(0.49),		#text position
	labels = c("Ace"))		#text
	
text(x = c(2.1e+07), y = c(0.49),		#text position
	labels = c("CHKov1"))		#text
	
abline(v = c(0.92e+07), lty = 2)
abline(v = c(2.1e+07), lty = 2)
	
dev.off()

#Plotting

pdf("CHR3R - H2.pdf", 		#filename
	width = 8,
	height = 8)

plot(x = joined$snp_start, 
	 y = joined$H2,
	 col = "turquoise2",		#colour
	 pch = 20,		#type of symbol
     xlab = "Position (bps)",
     ylab = "H2",
     main = "H2")
     
text(x = c(0.92e+07), y = c(0.13),		#text position
	labels = c("Ace"))		#text
	
text(x = c(2.1e+07), y = c(0.13),		#text position
	labels = c("CHKov1"))		#text
	
abline(v = c(0.92e+07), lty = 2)
abline(v = c(2.1e+07), lty = 2)
	
dev.off()

#Plotting

pdf("CHR3R - H12.pdf", 		#filename
	width = 8,
	height = 8)

plot(x = joined$snp_start, 
	 y = joined$H12,
	 col = "darkorchid2",		#colour
	 pch = 20,		#type of symbol
     xlab = "Position (bps)",
     ylab = "H12",
     main = "H12")
     
text(x = c(0.92e+07), y = c(0.6),		#text position
	labels = c("Ace"))		#text
	
text(x = c(2.1e+07), y = c(0.6),		#text position
	labels = c("CHKov1"))		#text
	
abline(v = c(0.92e+07), lty = 2)
abline(v = c(2.1e+07), lty = 2)
	
dev.off()

#Plotting

pdf("CHR3R - H2H1.pdf", 		#filename
	width = 8,
	height = 8)

plot(x = joined$snp_start, 
	 y = joined$H2.H1,
	 col = "deeppink2",		#colour
	 pch = 20,		#type of symbol
     xlab = "Position (bps)",
     ylab = "H2/H1",
     main = "H2/H1")
     
text(x = c(0.92e+07), y = c(0.17),		#text position
	labels = c("Ace"))		#text
	
text(x = c(2.1e+07), y = c(0.17),		#text position
	labels = c("CHKov1"))		#text
	
abline(v = c(0.92e+07), lty = 2)
abline(v = c(2.1e+07), lty = 2)
	
dev.off()

#Plotting

pi <- read.delim(file = "pi.windowed.pi")

pdf("PI.pdf", 		#filename
	width = 8,
	height = 8)

plot(x = pi$BIN_START, 
	 y = pi$PI,
	 col = "darkorange2",		#colour
	 pch = 20,		#type of symbol
     xlab = "Position (bps)",
     ylab = "Pi",
     main = "Pairwise Diversity")
     
text(x = c(0.92e+07), y = c(-0.0001),		#text position
	labels = c("Ace"))		#text
	
text(x = c(2.1e+07), y = c(-0.0001),		#text position
	labels = c("CHKov1"))		#text
	
abline(v = c(0.92e+07), lty = 2)
abline(v = c(2.1e+07), lty = 2)
	
dev.off()

#Plotting

tajima <- read.delim(file = "tajd.Tajima.D")

pdf("TAJIMAD.pdf", 		#filename
	width = 8,
	height = 8)

plot(x = tajima$BIN_START, 
	 y = tajima$TajimaD,
	 col = "chartreuse2",		#colour
	 pch = 20,		#type of symbol
     xlab = "Position (bps)",
     ylab = "Tajima's D",
     main = "Tajima's D")
     
text(x = c(0.92e+07), y = c(0.5),		#text position
	labels = c("Ace"))		#text
	
text(x = c(2.1e+07), y = c(0.5),		#text position
	labels = c("CHKov1"))
	
abline(v = c(0.92e+07), lty = 2)
abline(v = c(2.1e+07), lty = 2)
	
dev.off()

#Plotting 2x2

pdf("CHR3R.pdf", 		#filename
	width = 4,
	height = 4)

par(mfrow = c(2, 2))

plot(x = joined$snp_start, 
	 y = joined$H1,
	 col = "orchid2",		#colour
	 pch = 16,		#type of symbol
     xlab = "Position",
     ylab = "H1",
     main = "CHR3R - H1")
     
plot(x = joined$snp_start, 
	 y = joined$H2,
	 col = "orchid2",		#colour
	 pch = 16,		#type of symbol
     xlab = "Position",
     ylab = "H2",
     main = "CHR3R - H2")
     
plot(x = joined$snp_start, 
	 y = joined$H12,
	 col = "orchid2",		#colour
	 pch = 16,		#type of symbol
     xlab = "Position",
     ylab = "H12",
     main = "CHR3R - H12")
     
plot(x = joined$snp_start, 
	 y = joined$'H2.H1',
	 col = "orchid2",		#colour
	 pch = 16,		#type of symbol
     xlab = "Position",
     ylab = "H2/H1",
     main = "CHR3R - H2/H1")

dev.off()