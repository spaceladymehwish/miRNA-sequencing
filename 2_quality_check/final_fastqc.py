
import os
##using ensembl genome through ftp for indices

file = open("acc.txt")
accessions = file.read()
accessions = accessions.split()

inst_dir = "fastqc"
input_dir = "/home/mehwish/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/PRJNA201039/trim/"
output_dir = "/home/mehwish/Desktop/4_Alzheimers_multiomics/Alzheimers_miRNA_rnaseq/PRJNA201039/qc/final_qc/"
threads = " -t 16 "
for x in accessions:
   
    command = inst_dir + threads + " " + input_dir + x + "_trim.fastq.gz" + " -o " + output_dir
    print(command + " ....running....")
    os.system(command)

print("All done")
