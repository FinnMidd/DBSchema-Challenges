-- Personnel table
CREATE TABLE Personnel (
    PersonnelID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Rank VARCHAR(100) NOT NULL,
    Contact VARCHAR(255)
);

-- Training Records table
CREATE TABLE TrainingRecords (
    TrainingID INT PRIMARY KEY,
    Type VARCHAR(50) NOT NULL,
    Description VARCHAR(255) NOT NULL
);

-- Personnel Training table (Associative Table)
CREATE TABLE PersonnelTraining (
    LinkID INT PRIMARY KEY,
    PersonnelID INT,
    TrainingID INT,
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID),
    FOREIGN KEY (TrainingID) REFERENCES TrainingRecords(TrainingID)
);

-- Incident Report table
CREATE TABLE IncidentReport (
    IncidentID INT PRIMARY KEY,
    Date DATE,
    Location VARCHAR(255) NOT NULL,
    Type VARCHAR(255) NOT NULL,
    Description TEXT
);

-- Incident Personnel table (Associative Table)
CREATE TABLE IncidentPersonnel (
    LinkID INT PRIMARY KEY,
    IncidentID INT,
    PersonnelID INT,
    FOREIGN KEY (IncidentID) REFERENCES IncidentReport(IncidentID),
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID)
);

-- Equipment table
CREATE TABLE Equipment (
    EquipmentID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT NOT NULL,
    Condition VARCHAR(100) NOT NULL
);

-- Incident Equipment table (Associative Table)
CREATE TABLE IncidentEquipment (
    LinkID INT PRIMARY KEY,
    IncidentID INT,
    EquipmentID INT,
    FOREIGN KEY (IncidentID) REFERENCES IncidentReport(IncidentID),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);

-- Inventory Transactions table
CREATE TABLE InventoryTransactions (
    TransactionID INT PRIMARY KEY,
    EquipmentID INT,
    Type VARCHAR(100) NOT NULL,
    Supplier VARCHAR(255),
    FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID)
);
