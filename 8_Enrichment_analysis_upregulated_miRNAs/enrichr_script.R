library(devtools)
install_github("wjawaid/enrichR")
library(ggplot2)
library(dplyr)
library(enrichR)

analyze_enrichment <- function(data_file, dbs) {
  data <- read.csv(data_file, header = TRUE)
  
  

    cluster_data <- data
    
    up.idx <- which(cluster_data$pvalue < 0.05 & cluster_data$log2FoldChange > 2)
    dn.idx <- which(cluster_data$pvalue < 0.05 & cluster_data$log2FoldChange < 2)
    
    up.genes <- cluster_data[up.idx, ]$X2
    dn.genes <- cluster_data[dn.idx, ]$X2
    
    for (db in dbs) {
      enriched_pw_up <- enrichr(genes = up.genes, databases = db)
      write.csv(enriched_pw_up[[1]], file = paste0(db, "_", db, "_up.csv"))
      
      enriched_pw_dn <- enrichr(genes = dn.genes, databases = db)
      write.csv(enriched_pw_dn[[1]], file = paste0(db, "_", db, "_dn.csv"))
    }
  }




analyze_enrichment("final_upregulated_and_downregulated_alzheimers.csv", c("Reactome_2022", "GO_Biological_Process_2021", 
                             "GO_Cellular_Component_2021", "GO_Molecular_Function_2021"))

