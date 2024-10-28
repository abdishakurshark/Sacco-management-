CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ContactNumber VARCHAR(15),
    Email VARCHAR(50),
    JoinDate DATE
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    MemberID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10, 2),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

CREATE TABLE Contributions (
    ContributionID INT PRIMARY KEY,
    MemberID INT,
    ContributionDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    MemberID INT,
    LoanAmount DECIMAL(10, 2),
    IssueDate DATE,
    InterestRate DECIMAL(5, 2),
    Status VARCHAR(20),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

CREATE TABLE LoanRepayments (
    RepaymentID INT PRIMARY KEY,
    LoanID INT,
    RepaymentDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (LoanID) REFERENCES Loans(LoanID)
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    TransactionType VARCHAR(20),
    Amount DECIMAL(10, 2),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)
);