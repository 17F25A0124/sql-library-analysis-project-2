create database project_2;
use project_2;

-- Library System Management SQL Project

-- CREATE DATABASE library;

-- Create table "Branch"
CREATE TABLE branch
(
            branch_id VARCHAR(10) PRIMARY KEY,
            manager_id VARCHAR(10),
            branch_address VARCHAR(30),
            contact_no VARCHAR(15)
);


-- Create table "Employee"
CREATE TABLE employees
(
            emp_id VARCHAR(10) PRIMARY KEY,
            emp_name VARCHAR(30),
            position VARCHAR(30),
            salary DECIMAL(10,2),
            branch_id VARCHAR(10),
            FOREIGN KEY (branch_id) REFERENCES  branch(branch_id)
);


-- Create table "Members"
CREATE TABLE members
(
            member_id VARCHAR(10) PRIMARY KEY,
            member_name VARCHAR(30),
            member_address VARCHAR(30),
            reg_date DATE
);



-- Create table "Books"
CREATE TABLE books
(
            isbn VARCHAR(50) PRIMARY KEY,
            book_title VARCHAR(80),
            category VARCHAR(30),
            rental_price DECIMAL(10,2),
            status VARCHAR(10),
            author VARCHAR(30),
            publisher VARCHAR(30)
);



-- Create table "IssueStatus"
CREATE TABLE issued_status
(
            issued_id VARCHAR(10) PRIMARY KEY,
            issued_member_id VARCHAR(30),
            issued_book_name VARCHAR(80),
            issued_date DATE,
            issued_book_isbn VARCHAR(50),
            issued_emp_id VARCHAR(10),
            FOREIGN KEY (issued_member_id) REFERENCES members(member_id),
            FOREIGN KEY (issued_emp_id) REFERENCES employees(emp_id),
            FOREIGN KEY (issued_book_isbn) REFERENCES books(isbn) 
);

insert into issued_status values ('IS106','C106','Animal Farm','2024-03-10','978-0-330-25864-8','E104');
insert into issued_status values('IS107','C107','One Hundred Years of Solitude','2024-03-11','978-0-14-118776-1','E104'),
('IS108','C108','The Great Gatsby','2024-03-12','978-0-525-47535-5','E104'),
('IS109','C109','Jane Eyre','2024-03-13','978-0-141-44171-6','E105'),
('IS110','C110','The Alchemist','2024-03-14','978-0-307-37840-1','E105'),
('IS111','C109','Harry Potter and the Sorcerers Stone','2024-03-15','978-0-679-76489-8','E105'),
('IS112','C109','A Game of Thrones','2024-03-16','978-0-09-957807-9','E106'),
('IS113','C109','A Peoples History of the United States','2024-03-17','978-0-393-05081-8','E106'),
('IS114','C109','The Guns of August','2024-03-18','978-0-19-280551-1','E106'),
('IS115','C109','The Histories','2024-03-19','978-0-14-044930-3','E107'),
('IS116','C110','Guns, Germs, and Steel: The Fates of Human Societies','2024-03-20','978-0-393-91257-8','E107'),
('IS117','C110','1984','2024-03-21','978-0-679-64115-3','E107'),
('IS118','C101','Pride and Prejudice','2024-03-22','978-0-14-143951-8','E108'),
('IS119','C110','Brave New World','2024-03-23','978-0-452-28240-7','E108'),
('IS120','C110','The Road','2024-03-24','978-0-670-81302-4','E108'),
('IS121','C102','The Shining','2024-03-25','978-0-385-33312-0','E109'),
('IS122','C102','Fahrenheit 451','2024-03-26','978-0-451-52993-5','E109'),
('IS123','C103','Dune','2024-03-27','978-0-345-39180-3','E109'),
('IS124','C104','Where the Wild Things Are','2024-03-28','978-0-06-025492-6','E110'),
('IS125','C105','The Kite Runner','2024-03-29','978-0-06-112241-5','E110'),
('IS126','C105','Charlotte"s Web','2024-03-30','978-0-06-440055-8','E110'),
('IS127','C105','Beloved','2024-03-31','978-0-679-77644-3','E110'),
('IS128','C105','A Tale of Two Cities','2024-04-01','978-0-14-027526-3','E110'),
('IS129','C105','The Stand','2024-04-02','978-0-7434-7679-3','E110'),
('IS130','C106','Moby Dick','2024-04-03','978-0-451-52994-2','E101'),
('IS131','C106','To Kill a Mockingbird','2024-04-04','978-0-06-112008-4','E101'),
('IS132','C106','The Hobbit','2024-04-05','978-0-7432-7356-4','E106'),
('IS133','C107','Angels & Demons','2024-04-06','978-0-7432-4722-5','E106'),
('IS134','C107','The Diary of a Young Girl','2024-04-07','978-0-375-41398-8','E106'),
('IS135','C107','Sapiens: A Brief History of Humankind','2024-04-08','978-0-307-58837-1','E108'),
('IS136','C107','1491: New Revelations of the Americas Before Columbus','2024-04-09','978-0-7432-7357-1','E102'),
('IS137','C107','The Catcher in the Rye','2024-04-10','978-0-553-29698-2','E103'),
('IS138','C108','The Great Gatsby','2024-04-11','978-0-525-47535-5','E104'),
('IS139','C109','Harry Potter and the Sorcerers Stone','2024-04-12','978-0-679-76489-8','E105'),
('IS140','C110','Animal Farm','2024-04-13','978-0-330-25864-8','E102');


-- Create table "ReturnStatus"
CREATE TABLE return_status
(
            return_id VARCHAR(10) PRIMARY KEY,
            issued_id VARCHAR(30),
            return_book_name VARCHAR(80),
            return_date DATE,
            return_book_isbn VARCHAR(50),
            FOREIGN KEY (return_book_isbn) REFERENCES books(isbn)
);


-- Project TASK


-- ### 2. CRUD Operations


-- Task 1. Create a New Book Record
-- "978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')"

-- Task 2: Update an Existing Member's Address


-- Task 3: Delete a Record from the Issued Status Table
-- Objective: Delete the record with issued_id = 'IS104' from the issued_status table.

-- Task 4: Retrieve All Books Issued by a Specific Employee
-- Objective: Select all books issued by the employee with emp_id = 'E101'.


-- Task 5: List Members Who Have Issued More Than One Book
-- Objective: Use GROUP BY to find members who have issued more than one book.


-- ### 3. CTAS (Create Table As Select)

-- Task 6: Create Summary Tables**: Used CTAS to generate new tables based on query results - each book and total book_issued_cnt


-- ### 4. Data Analysis & Findings

-- Task 7. **Retrieve All Books in a Specific Category:


-- Task 8: Find Total Rental Income by Category:


-- Task 9. **List Members Who Registered in the Last 180 Days**:

-- Task 10: List Employees with Their Branch Manager's Name and their branch details**:


-- Task 11. Create a Table of Books with Rental Price Above a Certain Threshold

-- Task 12: Retrieve the List of Books Not Yet Returned

    
/*
### Advanced SQL Operations

Task 13: Identify Members with Overdue Books
Write a query to identify members who have overdue books (assume a 30-day return period). Display the member's name, book title, issue date, and days overdue.


Task 14: Branch Performance Report
Create a query that generates a performance report for each branch, showing the number of books issued, the number of books returned, and the total revenue generated from book rentals.


Task 15: CTAS: Create a Table of Active Members
Use the CREATE TABLE AS (CTAS) statement to create a new table active_members containing members who have issued at least one book in the last 6 months.



Task 16: Find Employees with the Most Book Issues Processed
Write a query to find the top 3 employees who have processed the most book issues. Display the employee name, number of books processed, and their branch.
*/



-- Task 1. Create a New Book Record
-- "978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')"

insert into books values 
('978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.');



-- Task 2: Update an Existing Member's Address
-- 456 Elm St

update members
set member_address = '475 Elm St'
where member_id = 'C102';

-- Task 3: Delete a Record from the Issued Status Table
-- Objective: Delete the record with issued_id = 'IS104' from the issued_status table.

delete from issued_status
where issued_id = 'IS104';

-- Task 4: Retrieve All Books Issued by a Specific Employee
-- Objective: Select all books issued by the employee with emp_id = 'E101'.


select * from issued_status
where  issued_emp_id='E101';


-- Task 5: List Members Who Have Issued More Than One Book
-- Objective: Use GROUP BY to find members who have issued more than one book.

select issued_member_id,count(issued_book_name)as no_of_books
from issued_status
group by issued_member_id
having count(issued_book_name)>1;

-- Task 6: Create Summary Tables**: Used CTAS to generate new tables based on query results - each book and total book_issued_cnt

create table count_books as
select b.isbn,b.book_title,count(ist.issued_book_isbn) as no_issued from books b
join issued_status ist on b.isbn=ist.issued_book_isbn
group by 1,2;

select * from count_books
order by no_issued desc;

-- Task 7. **Retrieve All Books in a Specific Category:

select * from books 
where category ='classic';

-- Task 8: Find Total Rental Income by Category:

select b.category,sum(b.rental_price)as rental_income,count(*) times from books b
join issued_status ist on b.isbn=ist.issued_book_isbn
group by 1;

-- Task 9. **List Members Who Registered in the Last 180 Days**:

select * from members
where reg_date >= curdate()-180;

-- Task 10: List Employees with Their Branch Manager's Name and their branch details**:

select e1.*,b.branch_id,e2.emp_name as manager  from  employees e1
join branch b on b.branch_id=e1.branch_id
join employees e2 on b.manager_id=e2.emp_id;

-- Task 11. Create a Table of Books with Rental Price Above a Certain Threshold

create table costly_books
as
select * from books
where rental_price>7;

-- Task 12: Retrieve the List of Books Not Yet Returned

select * from issued_status i
left join return_status r on i.issued_id=r.issued_id
where r.return_id is null;
    

### Advanced SQL Operations

-- Task 13: Identify Members with Overdue Books
-- Write a query to identify members who have overdue books (assume a 30-day return period). Display the member's name, book title, issue date, and days overdue.


select iss.issued_book_name,m.member_name,iss.issued_date,rs.return_date,
datediff('2024-05-05',iss.issued_date) as over_due from issued_status iss
join members m on m.member_id=iss.issued_member_id
left join return_status rs on iss.issued_id=rs.issued_id
where rs.return_date is null
and datediff('2024-05-05',iss.issued_date) >30;


-- Task 14: Branch Performance Report
-- Create a query that generates a performance report for each branch, showing the number of books issued, the number of books returned, and the total revenue generated from book rentals.

select e.branch_id,count(iss.issued_date)as no_of_books_issued,count(return_date)as no_of_books_returned,
sum(rental_price)as  total_revenue from issued_status iss
 left join return_status rs
 on iss.issued_id=rs.issued_id
 join employees e on iss.issued_emp_id=e.emp_id join books b on iss.issued_book_isbn=b.isbn
 group by e.branch_id;

-- Task 15: CTAS: Create a Table of Active Members
-- Use the CREATE TABLE AS (CTAS) statement to create a new table active_members containing members who have issued at least one book in the last 1 months.

create table active_members as
select issued_member_id from issued_status
where issued_date>= date_sub('2024-05-10',interval 1 month);

-- Task 16: Find Employees with the Most Book Issues Processed
-- Write a query to find the top 3 employees who have processed the most book issues. 
-- Display the employee name, number of books processed, and their branch.

select e.emp_name,count(issued_book_isbn) as books_processed,e.branch_id from issued_status ist
join employees e on ist.issued_emp_id=e.emp_id
group by e.emp_name,e.branch_id
order by count(issued_book_isbn) desc
limit 3;



