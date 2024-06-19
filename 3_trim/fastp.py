fastp -w 16 -a TGGAATTCTCGGGTGCCAAGG -i /home/mehwish/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/PRJNA201039/raw/SRR837484.fastq.gz -o /home/mehwish/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/PRJNA201039/trim/SRR837484_trim.fastq.gz

import os
##using ensembl genome through ftp for indices

file = open("acc.txt")
accessions = file.read()
accessions = accessions.split()

inst_dir = "fastp"
input_dir = "/home/mehwish/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/PRJNA201039/raw/"
output_dir = "/home/mehwish/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/PRJNA201039/trim/"
cores = " -w 16 "

for x in accessions:
   
    command = inst_dir + cores + " -a " + " TGGAATTCTCGGGTGCCAAGG " + "-i " + input_dir + x + ".fastq.gz" + " -o " + output_dir + x + "_trim.fastq.gz"
    print(command + " ....running....")
    os.system(command)

print("All done")
