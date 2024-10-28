# Sacco-management-


SACCO Management System

The SACCO Management System is a database-driven application designed to manage member contributions, loans, repayments, and transactions for a SACCO (Savings and Credit Cooperative Organization). This project demonstrates practical application of database design principles and SQL skills.

Table of Contents
1. Project Overview
2. Database Design
3. Features
4. Technologies Used
5. Installation
6. Database Structure
7. Sample Data
8. SQL Queries
9. Reporting
10. Contributing
11. License

## Project Overview

The SACCO Management System manages the following key functionalities:

Member registrations

Tracking member contributions

Managing loans and loan repayments

Recording financial transactions related to accounts


The goal is to provide an organized and efficient way of managing SACCO operations while demonstrating SQL and database management skills.

Database Design

The project is built around six main entities:

1. Members: Contains member details (e.g., name, contact info).


2. Accounts: Financial accounts associated with members.


3. Contributions: Records of member contributions.


4. Loans: Details of loans issued to members.


5. Loan Repayments: Tracks loan repayment details.


6. Transactions: Records financial transactions for accounts.



## Entity-Relationship (ER) Diagram

The database design includes relationships such as:

Members to Accounts: One-to-one or one-to-many

Members to Contributions: One-to-many

Members to Loans: One-to-many

Loans to Loan Repayments: One-to-many

Accounts to Transactions: One-to-many


##Features

Manage member information, contributions, loans, and repayments.

Calculate total contributions, loans disbursed, and outstanding balances.

Analyze average loan repayment amounts.

Provide transaction summaries for each account.


##Technologies Used

SQL: For database creation, data manipulation, and querying.

MySQL/PostgreSQL/SQLite (any preferred SQL database): To implement the database.


Installation

To set up the SACCO Management System, follow these steps:

1. Clone the repository:

git clone https:https://github.com/abdishakurshark/Sacco-management-.git


2. Set up the database:

Install a SQL database (e.g., MySQL, PostgreSQL).

Create the database schema by running the SQL scripts provided in the /sql folder.



3. Load sample data:

Use the sample_data.sql script to populate the database with sample records.



4. Run the queries and reports:

Execute the SQL queries provided in the queries.sql file to retrieve data and generate reports.




## Database Structure

The database contains the following tables:

1. Members Table

Columns: MemberID, FirstName, LastName, ContactNumber, Email, JoinDate



2. Accounts Table

Columns: AccountID, MemberID, AccountType, Balance



3. Contributions Table

Columns: ContributionID, MemberID, ContributionDate, Amount



4. Loans Table

Columns: LoanID, MemberID, LoanAmount, IssueDate, InterestRate, Status



5. Loan Repayments Table

Columns: RepaymentID, LoanID, RepaymentDate, Amount



6. Transactions Table

Columns: TransactionID, AccountID, TransactionDate, TransactionType, Amount




Sample Data

The sample_data.sql script includes sample records for each table. These records simulate real-world scenarios and can be used to test the system's queries and reporting features.

SQL Queries

The queries.sql file includes a variety of SQL queries to demonstrate the functionalities:

1. Retrieve member information, total contributions, and loans


2. Show relationships between members, contributions, and loans


3. Aggregate functions to analyze contributions, loan repayments, and balances


4. Filter results using the HAVING clause



Reporting

The system supports generating reports such as:

Total contributions by each member

Total loans disbursed and outstanding by member

Average loan repayment amounts

Transaction summaries by account


These reports provide insights into the SACCO's financial activities and member participation.

Contributing

Contributions are welcome! If you'd like to contribute to this project, please:
1. Fork the repository.
2. Create a new branch (git checkout -b feature-branch).
3. Make your changes and commit them (git commit -m 'Add some feature').
4. Push to the branch (git push origin feature-branch).
5. Create a new Pull Request.



License

This project is licensed under the MIT License - see the LICENSE file for details.

