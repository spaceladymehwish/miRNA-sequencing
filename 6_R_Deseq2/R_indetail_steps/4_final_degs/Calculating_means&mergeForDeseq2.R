library(rnaseqWrapper)
library(dplyr)

data <- read.csv("SRR5116489.csv")
head(data)
file1 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR5116489, na.rm=TRUE))
write.csv(file1, "SRR5116489.csv")

data <- read.csv("SRR5116491.csv", sep = ",")
file3 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR5116491, na.rm=TRUE))
write.csv(file3, "SRR5116491.csv")

data <- read.csv("SRR5116492.csv", sep = ",")
file4 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR5116492, na.rm=TRUE))
write.csv(file4, "SRR5116492.csv")

data <- read.csv("SRR5116493.csv", sep = ",")
file5 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR5116493, na.rm=TRUE))
write.csv(file5, "SRR5116493.csv")

data <- read.csv("SRR5116494.csv", sep = ",")
file6 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR5116494, na.rm=TRUE))
write.csv(file6, "SRR5116494.csv")

data <- read.csv("SRR5116495.csv", sep = ",")
file7 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR5116495, na.rm=TRUE))
write.csv(file7, "SRR5116495.csv")

data <- read.csv("SRR5116496.csv", sep = ",")
file8 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR5116496, na.rm=TRUE))
write.csv(file8, "SRR5116496.csv")

output <- mergeCountFiles("random490", fileID = "*.csv", fileSep = ",", seqIDcol = 2, colsToKeep = c("means"))
write.csv(output, "merged490.csv")

