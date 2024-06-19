
import os
##using ensembl genome through ftp for indices

file = open("acc.txt")
accessions = file.read()
accessions = accessions.split()


inst_dir = "mapper.pl"
indices = "/media/bushra/NGS/E-GEOD-24457/new_genome/ref.fa"
input_dir = "/media/bushra/NGS/E-GEOD-24457/Trim/"
output_dir = "/media/bushra/NGS/E-GEOD-24457/Mirdeep2/"

cores = " -o 12 "


for x in accessions:
   
    command = inst_dir + " " + input_dir + x + "_trim.fastq" + " " + "-e" + " -u " + "-h" + " -m " + "-p " + indices + " -s " + output_dir + x + "_collapsed.fa" + " -t " +  output_dir + x + ".arf" + " " + "-v" + cores
    print(command + " ....running....")
    os.system(command)
    
print("All done")
