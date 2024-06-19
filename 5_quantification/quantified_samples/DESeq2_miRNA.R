#BiocManager::install("DESeq2")

#Import DESeq2 library in R
library("DESeq2")
library( "DESeq2" )


#Load gene(/transcript) count matrix and labels
#countData <- as.matrix(read.csv("merged.csv", row.names="miRNA"))
#countData


#countData <- as.matrix(read.csv("merged.csv", row.names="miRNA"))
#head(countData)

data <- read.csv("merged.csv", header = TRUE)
data <- data %>% mutate_if(is.double, as.integer)
write.csv(data, "converted_integers.csv")


countData <- as.matrix(read.csv("converted_integers.csv", row.names="miRNA"))
colnames(countData) <- gsub(pattern = ".means", replacement = "", x = colnames(countData))
head(countData)
columnremoved <- countData[,-1]
write.csv(columnremoved, "counts.csv")
CountData <- as.matrix(read.csv("counts.csv", row.names="miRNA"))
colData <- read.csv("GSE94890_metadata.csv", sep=",", row.names=1)

#Note: The PHENO_DATA file contains information on each sample, e.g., sex or population. The exact way to import this depends on the format of the file.
#Check all sample IDs in colData are also in CountData and match their orders

all(rownames(colData) %in% colnames(CountData))

CountData <- CountData[, rownames(colData)]
all(rownames(colData) == colnames(CountData))

#Create a DESeqDataSet from count matrix and labels
dds <- DESeqDataSetFromMatrix(countData = CountData,
                                colData = colData, design = ~type)
#Run the default analysis for DESeq2 and generate results table

dds <- DESeq(dds)
res <- results(dds)

#Sort by adjusted p-value and display
(resOrdered <- res[order(res$padj), ])

head(results(dds, tidy=TRUE))
summary(res)
res <- res[order(res$padj),]
head(res)

#reset par
par(mfrow=c(1,1))
# Make a basic volcano plot
with(res, plot(log2FoldChange, -log10(padj), pch=20, main="Volcano plot", xlim=c(-3,3)))
res_dataframe = as.data.frame(res)
res_dataframe$names <- rownames(res_dataframe)
res_dataframe$names <- gsub(pattern = "hsa-", replacement = "", x = res_dataframe$names)
# Add colored points: blue if padj<0.01, red if log2FC>1 and padj<0.05)
#with(subset(res, padj<.01 ), points(log2FoldChange, -log10(padj), pch=20, col="blue"))
#with(subset(res, padj<.01 & abs(log2FoldChange)>1.5), points(log2FoldChange, -log10(padj), pch=20, col="red"))

library(EnhancedVolcano)
EnhancedVolcano(res,
                lab = res_dataframe$names,
                x = "log2FoldChange",
                y = "pvalue",
                pCutoff = 0.05,
                FCcutoff = 1.5,
                title = "ZIKA vs Normal")



final_set <- subset(res_dataframe, log2FoldChange < -1 & pvalue < 0.05 | log2FoldChange > 1 & pvalue < 0.05)
downreg <- subset(res_dataframe, log2FoldChange < -1 & pvalue < 0.05)
upreg <- subset(res_dataframe, log2FoldChange > 1 & pvalue < 0.05)


write.csv(final_set, "final_set_miRNAs.csv")
write.csv(downreg, "downregulated_miRNAs.csv")
write.csv(upreg, "upregulated_miRNAs.csv")
