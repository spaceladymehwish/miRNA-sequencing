
import os
##using ensembl genome through ftp for indices

file = open("acc.txt")
accessions = file.read()
accessions = accessions.split()

inst_dir = "/home/mehwish/anaconda3/mirdeep2-master/bin/miRDeep2.pl"
input_dir = "/media/waqar/hdd/Alzheimers_PRJNA201039/mapping/"
output_dir = "/media/waqar/hdd/Alzheimers_PRJNA201039/all_mirnas/"
ref_genome = "/media/waqar/hdd/Alzheimers_PRJNA201039/all_mirnas/Homo_sapiens_no_description.fa"
mature = "/media/waqar/hdd/Alzheimers_PRJNA201039/all_mirnas/mature_no_description.fa"
hairpin = "/media/waqar/hdd/Alzheimers_PRJNA201039/all_mirnas/hairpin_hsa.fa"
cores = " -o 12 "

for x in accessions:
   
    command = inst_dir + " " + input_dir + x + "_collapsed.fa" + " " + ref_genome + " " + input_dir + x + "_mapped.arf" + " " + mature + " " + " none " + hairpin + " " + " -t " + "hsa " + output_dir + x + "_report.log"
    print(command + " ....running....")
    os.system(command)

print("All done")  
