# Hotel Reservation System Database Solution

## Overview

This document outlines the database solution for a Hotel Reservation System, including the necessary tables and their relationships. The system is designed to efficiently manage guests, rooms, reservations, invoices, and additional services.

> **Reminder:**
> The provided solution is a recommended approach, there may be alternative solutions based on your specific preferences and requirements. Feel free to expand and adapt the solution to best suit your interests.

## Entity-Relationship Diagram

![Hotel Reservation System ERD](HotelERD.png)

## Tables

### 1. Guests

- Contains information on each hotel guest.
- Attributes:
  - Guest ID (Primary Key)
  - First Name
  - Last Name
  - Contact Details
  - Preferences

### 2. Rooms

- Contains information about each room in the hotel.
- Attributes:
  - Room Number (Primary Key)
  - Room Type
  - Nightly Rate

### 3. Features

- Stores details about all available room features that are offered.
- Attributes:
  - Feature ID (Primary Key)
  - Title
  - Description

### 4. Services

- Contains information on all additional services the hotel offers.
- Attributes:
  - Service ID (Primary Key)
  - Name
  - Description
  - Cost

### 5. RoomFeatures (Associative Table)

- Facilitates a many-to-many relationship between Rooms and their corresponding features.
- Attributes:
  - RoomFeatures ID (Primary Key)
  - Room ID (Foreign Key to Rooms)
  - Feature ID (Foreign Key to Features)

### 6. ReservationServices (Associative Table)

- Facilitates a many-to-many relationship between Reservations and Services.
- Attributes:
  - ReservationService ID (Primary Key)
  - Reservation ID (Foreign Key to Reservations)
  - Service ID (Foreign Key to Services)
  - Purchase Date

### 7. Invoices (Associative Table)

- Generates invoices for guests based on reservations and additional services.
- Attributes:
  - Invoice ID (Primary Key)
  - Guest ID (Foreign Key to Guests)
  - Issue Date
  - Total Cost
  - Paid Status

### 8. InvoiceReservationLink (Associative Table)

- Facilitates a many-to-many relationship between Invoices and Reservations.
- Attributes:
  - Link ID (Primary Key)
  - Invoice ID (Foreign Key to Invoices)
  - Reservation ID (Foreign Key to Reservations)

### 9. InvoiceServiceLink (Associative Table)

- Facilitates a many-to-many relationship between Invoices and Reservations.
- Attributes:
  - Link ID (Primary Key)
  - Invoice ID (Foreign Key to Invoices)
  - Service ID (Foreign Key to Services)

## Views

### 1. TotalCost

- A view to check the total cost of reservations and services ordered by the guests.
- Includes information on reservations and information on purchased services.

### 2. RoomOccupancy

- A view to track the current occupancy status of each room.
- Includes room number, guest details, and reservation dates.

## Notes

- The database schema uses standard relational database concepts, including primary and foreign keys, to establish relationships between entities.
- To include purchased services on the invoice, use the ServiceCheck view and run a query gathering relevant details from the ReservationServices table, considering reservation and guest IDs. This involves combining data, grouping, and calculating totals for a complete invoice summary.

> **Notice:**
>  Please note that this solution is a work in progress and may undergo further refinement based on specific requirements. Feel free to contribute or provide feedback where necessary.
