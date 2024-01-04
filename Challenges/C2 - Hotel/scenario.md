# Challenge: Hotel Reservation System

## Scenario

You have been tasked with designing a database for a Hotel Reservation System. The hotel caters to various guests, offers different types of rooms, and manages reservations efficiently. Your goal is to create a robust database schema that supports the hotel's reservation process.

## Requirements

1. **Rooms:**
   - Each room has a unique room number, type (e.g., standard, deluxe, suite), and rate per night.
   - Rooms may have additional features such as a view or specific amenities.

2. **Guests:**
   - Guests are identified by a unique guest ID.
   - Collect information about guests, including their name, contact details, and any special preferences.

3. **Reservations:**
   - Reservations are linked to a specific guest and room.
   - Include the reservation start and end dates.
   - Keep track of the reservation status (e.g., booked, checked-in, checked-out).

4. **Invoices:**
   - Generate invoices for guests based on their reservations.
   - Invoices should include details such as room charges, additional services, and taxes.

5. **Additional Services:**
   - The hotel offers additional services (e.g., room service, spa).
   - Include these services in the database, associating them with reservations when used.

## Tasks

1. Design the database schema to represent the entities and relationships described in the requirements.
2. Include primary and foreign key constraints where necessary.
3. Consider any additional attributes or constraints that would enhance the functionality of the Hotel Reservation System.

## Queries & Views

Challenge yourself by creating the following queries and views to test your SQL knowledge. Use these tasks to enhance the functionality of the Hotel Reservation System.

### 1. Check Total Cost

- Create a view titled `UnpaidTotal` to check the total cost of unpaid reservations and services ordered by a singular guest.
- Include information on reservations and purchased services.

### 2. Check Available Rooms

- Create a view titled `AvailableRooms` to track current available rooms.
- Include room numbers, room types and nightly rates.

### 3. Check Room Occupancy

- Create a view titled `CheckRoom` to track the current occupancy status of a specific room.
- Include room number, guest details and reservation dates.

## Notes

- You can choose any relational database management system (e.g., MySQL, PostgreSQL) for implementing your database schema.
- Feel free to provide a brief explanation of your design decisions in the `notes.md` file.

Happy designing!
