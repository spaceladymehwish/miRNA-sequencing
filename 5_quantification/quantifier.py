
import os
##using ensembl genome through ftp for indices

file = open("acc.txt")
accessions = file.read()
accessions = accessions.split()

inst_dir = "/home/mehwish/anaconda3/mirdeep2-master/bin/quantifier.pl"
input_dir = "~/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/mapper_mirdeep2/"
output_dir = "~/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/quantification_miRNA/"
precursor_rna = "~/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/hairpin.fa"
mature_rna = "~/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/mature.fa"



for x in accessions:
   
    command = inst_dir + " " + " -r " + input_dir + x + "_collapsed.fa" + " " + " -p " + precursor_rna + " " + " -m " +  mature_rna + " " + " -t " + "human" + " -k "
    print(command + " ....running....")
    os.system(command)

print("All done")  
