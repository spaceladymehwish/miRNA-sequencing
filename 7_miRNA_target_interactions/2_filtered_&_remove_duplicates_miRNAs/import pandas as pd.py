import pandas as pd

def extract_common_values(input_file, output_file):
    # Read the CSV file into a DataFrame
    df = pd.read_csv(input_file)

    # Find common values between column one and column two
    common_values = df[df['Column One'].isin(df['Column Two'])]

    # Save the common values to a new CSV file
    common_values.to_csv(output_file, index=False)

if __name__ == "__main__":
    # Replace 'input.csv' with the path to your CSV file
    input_csv_file = 'duplicates.csv'

    # Replace 'output.csv' with the path where you want to save the new CSV file
    output_csv_file = 'output.csv'

    extract_common_values(input_csv_file, output_csv_file)
