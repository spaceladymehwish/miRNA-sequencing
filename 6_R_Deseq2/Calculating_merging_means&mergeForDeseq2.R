library(rnaseqWrapper)


data <- read.csv("files/SRR070230.csv", sep = "\t")
head(data)
file1 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file1, "SRR070230.csv")

data <- read.csv("files/SRR070231.csv", sep = "\t")
head(data)
file2 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file2, "SRR070231.csv")

data <- read.csv("files/SRR070232.csv", sep = ",")
file3 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file3, "SRR070232.csv")

data <- read.csv("files/SRR070233.csv", sep = ",")
file4 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file4, "SRR070233.csv")

data <- read.csv("files/SRR070234.csv", sep = ",")
file5 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file5, "SRR070234.csv")

data <- read.csv("files/SRR070235.csv", sep = ",")
file6 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file6, "SRR070235.csv")

data <- read.csv("files/SRR070236.csv", sep = ",")
file7 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file7, "SRR070236.csv")

data <- read.csv("files/SRR070237.csv", sep = ",")
file8 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file8, "SRR070237.csv")

data <- read.csv("files/SRR070238.csv", sep = ",")
file9 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file9, "SRR070238.csv")

data <- read.csv("files/SRR070239.csv", sep = ",")
file10 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file10, "SRR070239.csv")

data <- read.csv("files/SRR070240.csv", sep = ",")
file11 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file11, "SRR070240.csv")

data <- read.csv("files/SRR070241.csv", sep = ",")
file12 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file12, "SRR070241.csv")

data <- read.csv("files/SRR070242.csv", sep = ",")
file13 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file13, "SRR070242.csv")

data <- read.csv("files/SRR070243.csv", sep = ",")
file14 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file14, "SRR070243.csv")

data <- read.csv("files/SRR070244.csv", sep = ",")
file15 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file15, "SRR070244.csv")

data <- read.csv("files/SRR070245.csv", sep = ",")
file16 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file16, "SRR070245.csv")

data <- read.csv("files/SRR070246.csv", sep = ",")
file17 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file17, "SRR070246.csv")

data <- read.csv("files/SRR070247.csv", sep = ",")
file18 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file18, "SRR070247.csv")

data <- read.csv("files/SRR070248.csv", sep = ",")
file19 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file19, "SRR070248.csv")

data <- read.csv("files/SRR070249.csv", sep = ",")
file20 <- data %>%
  group_by(miRNA) %>%
  dplyr::summarize(means = mean(read_count, na.rm=TRUE))
write.csv(file20, "SRR070249.csv")


output <- mergeCountFiles("random", fileID = "*.csv", fileSep = ",", seqIDcol = 2, colsToKeep = c("means"))
write.csv(output, "merged.csv")



acc = read.txt("files/acc.txt")
for x in acc {
  data <- read.csv("files/x", sep = "\t")
}