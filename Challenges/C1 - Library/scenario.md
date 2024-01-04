# Challenge: Library Management System

## Scenario

You have been tasked with designing a database for a Library Management System. The library serves multiple purposes, including book borrowing, returning, and managing the inventory of available books. Users, including both staff and library members, should be able to interact with the system seamlessly.

## Requirements

1. **Books:**
   - Each book has a unique ISBN, title, author, and publication year.
   - Books can belong to multiple genres.
   - You may assume books only have a single author.

2. **Users:**
   - Users are categorized into staff and library members.
   - Staff members will have additional information such as their job position.
   - Library members possess information such as their name, contact information, and a membership start date.

3. **Transactions:**
   - Transactions involve borrowing and returning books.
   - Each transaction should be recorded with the date and time.
   - Overdue transactions should be tracked along with the expected returns.

4. **Inventory:**
   - Manage and track individual copies of each book.
   - Each copy is assigned an availability status e.g. available, borrowed, overdue, removed, etc.

5. **Genres:**
   - Each genre has a name and description.

## Tasks

1. Design the database schema to represent the entities and relationships described in the requirements.
2. Include primary and foreign key constraints where necessary.
3. Consider any additional attributes or constraints that would enhance the functionality of the Library Management System.

## Queries & Views

Challenge yourself by creating the following queries and views to test your SQL knowledge. Use these tasks to enhance the functionality of the Library Management System.

### 1. Check Awaiting Returns

- Design and implement a view named `AwaitingReturns` to track both overdue and expected return transactions.
- Include transactions where books have been borrowed and are yet to be returned.

### 2. Update Transactions on Return

- Develop a query that efficiently updates the transaction table when a book is returned.
- It will execute when a book has been received and entered back into the system.

## Notes

- You can choose any relational database management system (e.g., MySQL, PostgreSQL) for implementing your database schema.
- Feel free to provide a brief explanation of your design decisions in the `notes.md` file.

Happy designing!
