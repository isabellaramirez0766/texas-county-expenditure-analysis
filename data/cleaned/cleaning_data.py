import pandas as pd

df = pd.read_csv("expenditures_by_county_2024.csv")


def clean_data(df):
    # Remove leading/trailing whitespace from column names
    df.columns = df.columns.str.strip()

    # Add underscores to column names
    df.columns = df.columns.str.replace(' ', '_')
    
    #Change column names to lowercase
    df.columns = df.columns.str.lower()

    #check for missing values and fill with UNKNOWN'
    df = df.fillna('UNKNOWN')

    #change amount from object to float with $ and commas added
    df['amount'] = df['amount'].str.replace('$', '').str.replace(',', '').astype(float)

    #check if there are any duplicate rows and remove them
    df = df.drop_duplicates()
    
    #check if values in county are uppercase and change those that are not to uppercase
    df['county'] = df['county'].str.upper()


    return df

def main():
    cleaned_df = clean_data(df)
    cleaned_df.to_csv("cleaned_expenditures_by_county_2024.csv", index=False)

    #send message to console that the data has been cleaned and saved
    print("Data has been cleaned and saved to 'cleaned_expenditures_by_county_2024.csv'")


    #print number of rows and columns in the console
    print(f"Number of rows: {cleaned_df.shape[0]}")
    print(f"Number of columns: {cleaned_df.shape[1]}")

if __name__ == "__main__":
    main()
    
