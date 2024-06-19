
import os
##using ensembl genome through ftp for indices

file = open("acc.txt")
accessions = file.read()
accessions = accessions.split()

inst_dir = "/home/mehwish/anaconda3/mirdeep2-master/bin/mapper.pl"
input_dir = "/media/waqar/hdd/Alzheimers_PRJNA201039/unzip_trim/"
output_dir = "/media/waqar/hdd/Alzheimers_PRJNA201039/mapping/"
indices = "/media/waqar/hdd/Alzheimers_PRJNA201039/bowtie_indices/miRNA_indices"
cores = " -o 12 "


for x in accessions:
   
    command = inst_dir + " " + input_dir + x + "_trim.fastq" + " " + " -e " + " -h " + " -i " + " -j " + " -m " + " -p " + indices + " -s " + output_dir + x + "_collapsed.fa" + " -t " + output_dir + x + "_mapped.arf" + " " + " -v " + " -u " + cores
    print(command + " ....running....")
    os.system(command)

print("All done")  
