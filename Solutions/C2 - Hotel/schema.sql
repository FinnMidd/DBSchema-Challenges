-- Create Guests table
CREATE TABLE Guests (
    GuestID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    ContactDetails VARCHAR(255) NOT NULL,
    Preferences VARCHAR(255)
);

-- Create Rooms table
CREATE TABLE Rooms (
    RoomNumber INT PRIMARY KEY,
    RoomType VARCHAR(255) NOT NULL,
    NightlyRate DECIMAL(10, 2) NOT NULL
);

-- Create Features table
CREATE TABLE Features (
    FeatureID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Description VARCHAR(255)
);

-- Create Services table
CREATE TABLE Services (
    ServiceID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Description VARCHAR(255),
    Cost DECIMAL(10, 2) NOT NULL
);

-- Create RoomFeatures table (Associative Table)
CREATE TABLE RoomFeatures (
    RoomID INT,
    FeatureID INT,
    PRIMARY KEY (RoomID, FeatureID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomNumber),
    FOREIGN KEY (FeatureID) REFERENCES Features(FeatureID)
);

-- Create Reservations table
CREATE TABLE Reservations (
    GuestID INT,
    RoomID INT,
    PRIMARY KEY (GuestID, RoomID),
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL,
    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomNumber)
);

-- Create ReservationServices table (Associative Table)
CREATE TABLE ReservationServices (
    ReservationServiceID INT PRIMARY KEY,
    ReservationID INT,
    ServiceID INT,
    PurchaseDate DATE NOT NULL,
    FOREIGN KEY (ReservationID) REFERENCES Reservations(ReservationID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

-- Create Invoices table (Associative Table)
CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    GuestID INT,
    IssueDate DATE NOT NULL,
    PaidStatus BOOLEAN NOT NULL,
    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID)
);

-- Create InvoiceReservationLink table (Associative Table)
CREATE TABLE InvoiceReservationLink (
    LinkID INT PRIMARY KEY,
    InvoiceID INT,
    ReservationID INT,
    FOREIGN KEY (InvoiceID) REFERENCES Invoices(InvoiceID),
    FOREIGN KEY (ReservationID) REFERENCES Reservations(ReservationID)
);

-- Create InvoiceServiceLink table (Associative Table)
CREATE TABLE InvoiceServiceLink (
    LinkID INT PRIMARY KEY,
    InvoiceID INT,
    ServiceID INT,
    FOREIGN KEY (InvoiceID) REFERENCES Invoices(InvoiceID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);
