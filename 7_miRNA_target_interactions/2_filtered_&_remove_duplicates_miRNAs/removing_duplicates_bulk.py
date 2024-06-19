import pandas as pd
import glob

# Define the directory containing the CSV files
directory = '/home/mehwish/Desktop/HPV/HPV_PRJNA357712/mirwalk_analysis/filtered_targets/down/'

# Get a list of all CSV files in the directory
csv_files = glob.glob(directory + '*.csv')

# Process each CSV file
for file in csv_files:
    # Read the CSV file into a DataFrame
    df = pd.read_csv(file)

    # Remove duplicates based on the 'gene symbol' column
    df.drop_duplicates(subset='genesymbol', inplace=True)

    # Save the DataFrame without duplicates to a new CSV file
    output_file = 'output_' + file.split('/')[-1]
    output_path = directory + output_file
    df.to_csv(output_path, index=False)
