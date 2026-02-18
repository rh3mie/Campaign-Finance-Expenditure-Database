# Campaign Finance Expenditure Database Project

*By Rheymar Devera, Ryan McNeill, Tariq Witherspoon, and Ethan Schwartzberg*

## Overview
This project builds a fully normalized SQL database using campaign finance expenditures using real data from the [City of Austin's Open Data Portal](https://data.austintexas.gov/browse?limitTo=datasets&sortBy=relevance&pageSize=20&q=Campaign+Finance+-+Expenditures). The goal is to provide a transparent, organized, and analysis-ready database that helps users understand how money moves through political campaigns, who pays, who receives payments, and what activities funds support. We transformed the large unstructured dataset into a clean relational design with nine interconnected tables, supporting rich analytical queries and views.

## Files
- ```sql_code```: Folder that includes all SQL code and .mwb file for database structure. Includes script and backup for database creation, and for SQL queries for data exploration.
- ```campaign_expenditures.csv```: csv file including campaign expenditure data
- ```campaign_finance_expenditure_report.pdf```: Final report explaining database creation, methods, queries, and future work.

## Project Outline
- Model campaign finance expenditure data into a relational SQL database
- Normalize raw government data into clear tables
- Demonstrate one-to-many, many-to-many, and linking-table relationships
- Provide SQL views that reveal trends and insights, as well as other analytics
- Ensure transparency, ethical data usage, and ease of public access

## Database Description
<img width="493" height="480" alt="image" src="https://github.com/user-attachments/assets/dfbb337c-bd9b-4594-bb8b-1149cd16789f" />

As you can see from this screenshot of our physical database, it is centered around the payments table. This table stores information about payment amounts, dates, payees, payers, expenditure types, report details, and more. In total, there are 9 tables in our database:
- ```payments```: Main fact table containing all campaign payments
- ```payees```: Individuals or organizations recieving payments
- ```paid_bys```: Individuals or organizations making payments
- ```payee_paid_by```: Linking table modeling many-to-many payer payee relationships
- ```expenditure_types```: Classifications of different types of expenditures
- ```expenses```: Expense descriptions
- ```report_types```: Types of reports filed for campaign finance expenditures
- ```report_websites```: URLs where reports are publicly accessible
- ```addresses```: Address information for payees

This system uses foreign keys to maintain clarity, consistency, and navigability across all data relationships. The structuring of this database also reduces redundancy through normalization, enables scalability for other cities/future datasets, and simplifies query creation for deep analysis.

## Data Cleaning and Normalization
The raw dataset contained many duplicate transactions, creating a large, mixed set of attributes and making analysis difficult. To clean and normalize the data, we:
- Extracted only meaningful entities (payees, expenditure types, etc)
- Normalized data into separate tables (1NF -> 3NF)
- Removed redundancies, nulls, and repetitive values
- Created proper foreign keys to ensure reference integrity

## SQL Views/ Queries
We created six analytical SQL views to demonstrate joins, filtering, window functions, aggregation, linking tables, and subqueries. These were created as examples of what insights could be taken from this dataset.
- **Query #1**: Creates a view showing payments made by a payer to an organization, and if the payment is due to a political obligation.
- **Query #2**: Shows payment counts by report type for each payee.
- **Query #3**: Creates a view that shows the total amount of payments for an individual payee, and the address information associated with the payee.
- **Query 4**: Creates a view that shows the number of payments for a specific expense, for a
organization (paid by) and the expenditure type.
- **Query 5**: Creates a view that shows the average payment amount for an organization (paid by)
within the first four months of the year.
- **Query 6**: Creates a view that identifies payments that are above the average payment amount for
each payee, specifically identifying individual payees.

## Key Findings
- Total Payments by payee shows that the top 10 payees account for 57% of total campaign expenditures, showing how distribution is more concentrated than spread.
- Payment counts differ significantly by expenditure type, with the highest expenditure categories (political contribution, advertisement) containing ~3.4 times more transactions than lower volume categories (non-political, office-expense) for the same payees.
- These high-cost expenditure types (political contribution, advertisement, salaries, event fees) account for 73% of all recorded payments from this dataset, showing campaign spending prioritization.
- Average payment amounts during the first four months of the year vary vastly (30-55%) across organizations, showing different approaches to early-cycle spending strategies.
- Individual payees pay less than the average amount in the dataset, especially compared to organizations and companies.
- This normalized schema allows for full traceability of transactions, linking every payment to payer, payee, expense, expenditure type, and report metadata with no empty records.

## Ethical Considerations
This data contained personal information from people and organizations, which would be a problem for privacy protection. To make this database ethical, we took these steps and values.
- Transparency: Used official, untampered with government data
- Privacy Protection: No use of sensitive information
- Bias Reduction: Designed the database to avoid the exclusion of any groups or donors
- Equitable Access: Data and design are free to use for the public

## Future Work
This project can be improved upon in the future, where we could also add data from additional cities and states. We could integrate some sort of API later on, where we can use real-time updates from government finance sites to keep the database relevant. Other datasets can also be combined with it, allowing for deeper analysis into political expenditure trends (voter demographics, election results, etc).

## How to Use This Database
1. Review SQL schema and ERD to understand relationships
2. Execute ```campaign_finance_expenditures_script.sql``` to create the database schema in the MySQL environment
3. Load the provided data into the schema
4. Run ```expenditure_db_queries.sql``` or your own scripts to explore and generate insights
5. Extend the database with additional data or views







