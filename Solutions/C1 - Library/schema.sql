-- Create Books table
CREATE TABLE Books (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    PublicationYear INT
);

-- Create Genres table
CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description VARCHAR(255)
);

-- Create UserType as ENUM
CREATE TYPE user_type_enum AS ENUM ('staff', 'member');

-- Create Users table
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    UserType user_type_enum NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    ContactInformation VARCHAR(255),
    MembershipStartDate DATE,
    Position VARCHAR(50)
);

-- Create Transactions table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    UserID INT,
    CopyID INT,
    TransactionDate DATE NOT NULL,
    ExpectedReturnDate DATE NOT NULL,
    ReceivedReturnDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (CopyID) REFERENCES Inventory(CopyID)
);

-- Create AvailabilityStatus as ENUM
CREATE TYPE availability_status_enum AS ENUM ('available', 'borrowed', 'overdue', 'removed');

-- Create Inventory table
CREATE TABLE Inventory (
    CopyID INT PRIMARY KEY,
    ISBN VARCHAR(13),
    AvailabilityStatus availability_status_enum NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN)
);

-- Create BookGenres table (Associative Table)
CREATE TABLE BookGenres (
    ISBN VARCHAR(13),
    GenreID INT,
    PRIMARY KEY (ISBN, GenreID),
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);
