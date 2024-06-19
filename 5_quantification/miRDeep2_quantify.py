import os
##using ensembl genome through ftp for indices

file = open("acc.txt")
accessions = file.read()
accessions = accessions.split()

inst_dir = "quantifier.pl"
input_dir = "/media/bushra/NGS/Kidney_mirna/E-GEOD-24457/mirdeep2/mirdeep2_mapping/output/"
output_dir = "/media/bushra/NGS/Kidney_mirna/E-GEOD-24457/mirdeep2/miRDeep2_quantify/"
mature = "/media/bushra/NGS/Kidney_mirna/E-GEOD-24457/mirdeep2/mirbase/mature_hsa.fa"
hairpin = "/media/bushra/NGS/Kidney_mirna/E-GEOD-24457/mirdeep2/mirbase/hairpin_hsa.fa"


for x in accessions:
   
    command = inst_dir + " -p " + hairpin + " -m " + mature + " " + " -r " + input_dir + x + "_collapsed.fa" + " -t " + "hsa" + " -k"
    print(command + " ....running....")
    os.system(command)
    
print("All done")
