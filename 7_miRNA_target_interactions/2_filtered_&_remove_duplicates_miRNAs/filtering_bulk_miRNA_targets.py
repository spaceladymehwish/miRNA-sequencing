import pandas as pd
import os

# Define the directory containing the CSV files
directory = ("/home/mehwish/Desktop/HPV/HPV_PRJNA357712/mirwalk_analysis/raw_targets/down/")

# Get a list of all CSV files in the directory
csv_files = [file for file in os.listdir(directory) if file.endswith('.csv')]

# Process each CSV file
for file in csv_files:
    # Read the CSV file into a DataFrame
    file_path = os.path.join(directory, file)
    df = pd.read_csv(file_path, delimiter=",")

    # Extract the data based on the conditions
    filtered_data = df[(df['bindingp'] == 1) & (df['au'] < 0.6) & (df['energy'] <= -30)]

    # Print the filtered data
    print(filtered_data)

    # Save the filtered data to a new CSV file
    output_file = f"{os.path.splitext(file)[0]}_filtered.csv"
    output_path = os.path.join(directory, output_file)
    filtered_data.to_csv(output_path, index=False)
