
import os
##using ensembl genome through ftp for indices

file = open("acc.txt")
accessions = file.read()
accessions = accessions.split()

inst_dir = "fastqc"
input_dir = "/home/mehwish/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/PRJNA201039/raw_/"
output_dir = "/home/mehwish/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/PRJNA201039/qc/initial_qc/"

for x in accessions:
   
    command = inst_dir + " " + input_dir + x + ".fastq.gz" + " -o " + output_dir
    print(command + " ....running....")
    os.system(command)

print("All done")
