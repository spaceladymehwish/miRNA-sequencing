import pandas as pd

# Read the CSV file into a DataFrame
df = pd.read_csv('hsa-miR-193b-3p_filtered.csv')

# Remove duplicates based on the 'gene symbol' column
df.drop_duplicates(subset='genesymbol', inplace=True)

# Save the DataFrame without duplicates to a new CSV file
df.to_csv('hsa-miR-193b-3p_filtered.csv', index=False)
