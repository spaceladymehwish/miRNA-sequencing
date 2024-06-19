install.packages("enrichR")
library(enrichR)
data <- read.csv("~/Desktop/melanoma_RNASeq/eyemelanoma_demo/final_upregulated_and_downregulated_melanoma.csv", header = TRUE)
all <- read.csv("~/Desktop/melanoma_RNASeq/eyemelanoma_demo/final_upregulated_and_downregulated_melanoma.csv", header = TRUE)
file <- as.data.frame(all)
up.idx <- which(data$pvalue < 0.05 & data$log2FoldChange > 2)
dn.idx <- which(data$pvalue < 0.05 & data$log2FoldChange < -2)

all.genes <- data$X2
up.genes <- data[up.idx,]$X2
dn.genes <- data[dn.idx,]$X2
#For Functional Enrichment Analysis
DisGeNET
Cancer_Cell_Line_Encyclopedia
ClinVar_2019
GO_Biological_Process_2021
GO_Cellular_Component_2021
GO_Molecular_Function_2021
Human_Phenotype_Ontology
KEGG_2019_Human
OMIM_Disease
Panther_2016
Reactome_2016
WikiPathways_2019_Human

library(enrichR)
dbs_pw <- c("KEGG_2019_Human")

upEnriched_pw <- enrichr(genes = up.genes, databases = dbs_pw)
dnEnriched_pw <- enrichr(genes = dn.genes, databases = dbs_pw)


plotEnrich(upEnriched_pw[[1]], showTerms = 15, numChar = 40, y = "Ratio", orderBy = "P.value", title = "KEGG Pathways - Upregulated Genes")


plotEnrich(dnEnriched_pw[[1]], showTerms = 15, numChar = 40, y = "Ratio", orderBy = "P.value", title = "KEGG Pathways - Downregulated Genes")

write.csv(upEnriched_pw[1], "kegg_up.csv")
write.csv(dnEnriched_pw[1], "kegg_dn.csv")
