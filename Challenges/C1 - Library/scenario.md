# Challenge: Library Management System

## Scenario

You have been tasked with designing a database for a Library Management System. The library serves multiple purposes, including book borrowing, returning, and managing the inventory of available books. Users, including both staff and library members, should be able to interact with the system seamlessly.

## Requirements

1. **Books:**
   - Each book has a unique ISBN, title, author(s), and publication year.
   - Books can belong to multiple genres.

2. **Users:**
   - Users are categorized into staff and library members.
   - Staff members have additional information such as position and contact details.
   - Library members have a membership ID, name, contact information, and a membership start date.

3. **Transactions:**
   - Transactions involve borrowing and returning books.
   - Each transaction should be recorded with the date and time.
   - Overdue transactions should be tracked.

4. **Inventory:**
   - The system should keep track of the quantity of each book available in the library.
   - Should any book be unavailable, the inventory should track its expected return.

5. **Genres:**
   - Each genre has a name and description.

## Tasks

1. Design the database schema to represent the entities and relationships described in the requirements.
2. Include primary and foreign key constraints where necessary.
3. Consider any additional attributes or constraints that would enhance the functionality of the Library Management System.

## Notes

- You can choose any relational database management system (e.g., MySQL, PostgreSQL) for implementing your database schema.
- Feel free to provide a brief explanation of your design decisions in the `notes.md` file.

Happy designing!
