import pandas as pd

# Read the CSV file into a DataFrame
df = pd.read_csv('/media/waqar/hdd/Alzheimers/miRNA_PRJNA201039/miRNA_target_interactions/hsa-miR-7155-3p.csv', delimiter=",")

# Extract the data based on the conditions
filtered_data = df[(df['bindingp'] == 1) & (df['au'] < 0.6) & (df['energy'] <= -30)]

# Print the filtered data
print(filtered_data)

# Save the filtered data
filtered_data.to_csv('miR-7155-3p.csv', index=False)