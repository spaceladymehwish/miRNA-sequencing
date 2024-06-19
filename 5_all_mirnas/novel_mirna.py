import os
##using ensembl genome through ftp for indices

file = open("acc.txt")
accessions = file.read()
accessions = accessions.split()


inst_dir = "miRDeep2.pl"
ref = "/media/bushra/NGS/E-GEOD-24457/new_genome/Homo_sapiens.GRCh38.dna.primary_assembly.fa"
input_dir = "/media/bushra/NGS/E-GEOD-24457/Mirdeep2/"
output_dir = "/media/bushra/NGS/E-GEOD-24457/Novel_mirna/"
mature = "/media/bushra/NGS/E-GEOD-24457/mature_hsa.fa"
others = "/media/bushra/NGS/E-GEOD-24457/mature_other.fa"
hairpin = "/media/bushra/NGS/E-GEOD-24457/hairpin_hsa.fa"

cores = " -o 12 "


for x in accessions:
   
    command = inst_dir + " " + input_dir + x + "_collapsed.fa" + " " + ref + " " + input_dir + x + ".arf" + " " + mature + " " + others + " " + hairpin + " -t " + "hsa 2" + ">" + x + "_report.log"
    print(command + " ....running....")
    os.system(command)
    
print("All done")
