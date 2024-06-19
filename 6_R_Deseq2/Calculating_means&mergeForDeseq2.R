library(rnaseqWrapper)
library(dplyr)

data <- read.csv("SRR837437.csv")
head(data)
file1 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837437, na.rm=TRUE))
write.csv(file1, "SRR837437.csv")

data <- read.csv("SRR837438.csv")
head(data)
file2 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837438, na.rm=TRUE))
write.csv(file2, "SRR837438.csv")

data <- read.csv("SRR837439.csv", sep = ",")
file3 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837439, na.rm=TRUE))
write.csv(file3, "SRR837439.csv")

data <- read.csv("SRR837440.csv", sep = ",")
file4 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837440, na.rm=TRUE))
write.csv(file4, "SRR837440.csv")

data <- read.csv("SRR837441.csv", sep = ",")
file5 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837441, na.rm=TRUE))
write.csv(file5, "SRR837441.csv")

data <- read.csv("SRR837442.csv", sep = ",")
file6 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837442, na.rm=TRUE))
write.csv(file6, "SRR837442.csv")

data <- read.csv("SRR837443.csv", sep = ",")
file7 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837443, na.rm=TRUE))
write.csv(file7, "SRR837443.csv")

data <- read.csv("SRR837444.csv", sep = ",")
file8 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837444, na.rm=TRUE))
write.csv(file8, "SRR837444.csv")

data <- read.csv("SRR837445.csv", sep = ",")
file9 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837445, na.rm=TRUE))
write.csv(file9, "SRR837445.csv")

data <- read.csv("SRR837446.csv", sep = ",")
file10 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837446, na.rm=TRUE))
write.csv(file10, "SRR837446.csv")

data <- read.csv("SRR837447.csv", sep = ",")
file11 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837447, na.rm=TRUE))
write.csv(file11, "SRR837447.csv")


data <- read.csv("SRR837448.csv", sep = ",")
file12 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837448, na.rm=TRUE))
write.csv(file12, "SRR837448.csv")

data <- read.csv("SRR837506.csv", sep = ",")
file70 <- data %>%
  group_by(X.miRNA) %>%
  dplyr::summarize(means = mean(SRR837506, na.rm=TRUE))
write.csv(file70, "SRR837506.csv")




output <- mergeCountFiles("random", fileID = "*.csv", fileSep = ",", seqIDcol = 2, colsToKeep = c("means"))
write.csv(output, "merged.csv")

