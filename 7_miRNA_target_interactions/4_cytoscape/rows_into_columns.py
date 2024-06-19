import csv

import csv

import csv

def divide_words_into_rows(csv_file):
    # Read the CSV file
    with open(csv_file, 'r') as file:
        reader = csv.reader(file)
        rows = list(reader)
    
    # Divide words into separate rows
    divided_rows = [[word] for row in rows for word in row[0].split()]
    
    # Write the divided data to a new CSV file
    with open('mRNA_in_cols.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerows(divided_rows)

# Provide the path to your CSV file
csv_file_path = '/media/waqar/hdd/Alzheimers/miRNA_PRJNA201039/miRNA_target_interactions/rows_into_columns.csv'

# Call the function to divide words into rows
divide_words_into_rows(csv_file_path)


