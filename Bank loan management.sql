CREATE DATABASE BankLoanMan;
use BankLoanMan;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    income DECIMAL(10,2),
    credit_score INT
);

CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Loan_Type (
    loan_type_id INT PRIMARY KEY,
    loan_name VARCHAR(50),
    interest_rate DECIMAL(5,2)
);

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    loan_type_id INT,
    loan_amount DECIMAL(10,2),
    tenure_years INT,
    start_date DATE,
    FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY(branch_id) REFERENCES Branch(branch_id),
    FOREIGN KEY(loan_type_id) REFERENCES Loan_Type(loan_type_id)
);

CREATE TABLE EMI_Payments (
    payment_id INT PRIMARY KEY,
    loan_id INT,
    payment_date DATE,
    amount_paid DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY(loan_id) REFERENCES Loans(loan_id)
);

INSERT INTO Branch VALUES
(1,'T Nagar','Chennai'),
(2,'Velachery','Chennai'),
(3,'Anna Nagar','Chennai'),
(4,'Tambaram','Chennai'),
(5,'Adyar','Chennai'),
(6,'Porur','Chennai'),
(7,'OMR','Chennai'),
(8,'Guindy','Chennai'),
(9,'Mylapore','Chennai'),
(10,'Ambattur','Chennai'),
(11,'Coimbatore Main','Coimbatore'),
(12,'Madurai','Madurai'),
(13,'Trichy','Trichy'),
(14,'Salem','Salem'),
(15,'Erode','Erode'),
(16,'Vellore','Vellore'),
(17,'Tirunelveli','Tirunelveli'),
(18,'Thoothukudi','Thoothukudi'),
(19,'Nagercoil','Nagercoil'),
(20,'Dindigul','Dindigul'),
(21,'Karur','Karur'),
(22,'Kanchipuram','Kanchipuram'),
(23,'Hosur','Hosur'),
(24,'Tiruppur','Tiruppur'),
(25,'Pollachi','Pollachi'),
(26,'Thanjavur','Thanjavur'),
(27,'Nagapattinam','Nagapattinam'),
(28,'Cuddalore','Cuddalore'),
(29,'Villupuram','Villupuram'),
(30,'Ariyalur','Ariyalur'),
(31,'Pudukkottai','Pudukkottai'),
(32,'Ramanathapuram','Ramanathapuram'),
(33,'Sivagangai','Sivagangai'),
(34,'Virudhunagar','Virudhunagar'),
(35,'Dharmapuri','Dharmapuri'),
(36,'Krishnagiri','Krishnagiri'),
(37,'Namakkal','Namakkal'),
(38,'Perambalur','Perambalur'),
(39,'Theni','Theni'),
(40,'Tenkasi','Tenkasi'),
(41,'Ranipet','Ranipet'),
(42,'Mayiladuthurai','Mayiladuthurai'),
(43,'Tiruvarur','Tiruvarur'),
(44,'Nilgiris','Ooty'),
(45,'Kanyakumari','Kanyakumari'),
(46,'Chengalpattu','Chengalpattu'),
(47,'Thiruvallur','Thiruvallur'),
(48,'Thoothukudi Port','Thoothukudi'),
(49,'Airport','Chennai'),
(50,'Central','Chennai');

INSERT INTO Loan_Type VALUES
(1,'Home Loan',8.5),
(2,'Personal Loan',12.5),
(3,'Car Loan',9.0),
(4,'Education Loan',7.5),
(5,'Business Loan',11.0);

INSERT INTO Customers VALUES
(1,'Arun',30,'Chennai',50000,720),
(2,'Kumar',40,'Madurai',60000,680),
(3,'Ravi',35,'Trichy',55000,700),
(4,'Suresh',28,'Salem',45000,650),
(5,'Vijay',50,'Chennai',80000,750),
(6,'Ajith',32,'Erode',52000,710),
(7,'Dinesh',29,'Chennai',48000,690),
(8,'Ramesh',38,'Vellore',62000,720),
(9,'Mani',41,'Madurai',67000,660),
(10,'Saravanan',36,'Chennai',59000,730),
(11,'Karthik',33,'Hosur',53000,705),
(12,'Prakash',45,'Trichy',72000,740),
(13,'Senthil',27,'Tiruppur',42000,640),
(14,'Rajesh',39,'Salem',61000,710),
(15,'Bala',34,'Coimbatore',56000,700),
(16,'Naveen',31,'Chennai',51000,690),
(17,'Murali',42,'Ooty',65000,720),
(18,'Gopi',37,'Thanjavur',60000,680),
(19,'Aravind',29,'Chennai',47000,660),
(20,'Sathish',46,'Vellore',75000,750),
(21,'Rohit',30,'Karur',54000,710),
(22,'Mohan',44,'Dindigul',69000,730),
(23,'Hari',26,'Chennai',41000,630),
(24,'Prabhu',35,'Salem',58000,690),
(25,'Ashok',38,'Erode',62000,705),
(26,'Ganesh',47,'Trichy',78000,760),
(27,'Vimal',33,'Madurai',52000,680),
(28,'Raja',40,'Chennai',64000,720),
(29,'Nitin',29,'Hosur',49000,700),
(30,'Deepak',31,'Tirunelveli',51000,690),
(31,'Siva',36,'Chennai',57000,710),
(32,'Anand',45,'Theni',72000,740),
(33,'Kannan',34,'Coimbatore',56000,700),
(34,'Lokesh',39,'Salem',61000,720),
(35,'Prem',28,'Chennai',45000,650),
(36,'Bharath',50,'Vellore',82000,770),
(37,'Raj',42,'Trichy',67000,730),
(38,'Ranjith',37,'Chennai',60000,710),
(39,'Arjun',33,'Madurai',53000,690),
(40,'Surya',41,'Hosur',65000,740),
(41,'Vinod',27,'Chennai',42000,640),
(42,'Kishore',38,'Ooty',62000,705),
(43,'Naren',29,'Thanjavur',47000,660),
(44,'Vasanth',46,'Erode',75000,750),
(45,'Santhosh',35,'Chennai',58000,690),
(46,'Rakesh',30,'Karur',54000,700),
(47,'Ajay',44,'Dindigul',69000,730),
(48,'Rahul',26,'Chennai',41000,630),
(49,'Varun',39,'Salem',61000,710),
(50,'Praveen',34,'Coimbatore',56000,700);

INSERT INTO Loans VALUES
(1,1,1,1,300000,5,'2022-01-01'),
(2,2,2,2,150000,3,'2022-02-10'),
(3,3,3,3,400000,4,'2022-03-15'),
(4,4,4,1,500000,10,'2022-04-11'),
(5,5,5,2,200000,5,'2022-05-20'),
(6,6,6,3,350000,6,'2022-06-25'),
(7,7,7,4,250000,4,'2022-07-14'),
(8,8,8,5,450000,8,'2022-08-12'),
(9,9,9,1,600000,10,'2022-09-09'),
(10,10,10,2,180000,3,'2022-10-01'),
(11,11,11,3,320000,5,'2022-01-11'),
(12,12,12,4,210000,6,'2022-02-22'),
(13,13,13,5,500000,7,'2022-03-13'),
(14,14,14,1,550000,9,'2022-04-04'),
(15,15,15,2,170000,4,'2022-05-05'),
(16,16,16,3,380000,6,'2022-06-16'),
(17,17,17,4,290000,5,'2022-07-07'),
(18,18,18,5,410000,8,'2022-08-18'),
(19,19,19,1,620000,10,'2022-09-19'),
(20,20,20,2,190000,3,'2022-10-20'),
(21,21,21,3,330000,5,'2022-01-21'),
(22,22,22,4,220000,6,'2022-02-02'),
(23,23,23,5,510000,7,'2022-03-23'),
(24,24,24,1,560000,9,'2022-04-24'),
(25,25,25,2,175000,4,'2022-05-15'),
(26,26,26,3,390000,6,'2022-06-26'),
(27,27,27,4,300000,5,'2022-07-27'),
(28,28,28,5,420000,8,'2022-08-08'),
(29,29,29,1,630000,10,'2022-09-29'),
(30,30,30,2,195000,3,'2022-10-10'),
(31,31,31,3,340000,5,'2022-01-31'),
(32,32,32,4,230000,6,'2022-02-12'),
(33,33,33,5,520000,7,'2022-03-03'),
(34,34,34,1,570000,9,'2022-04-14'),
(35,35,35,2,180000,4,'2022-05-25'),
(36,36,36,3,400000,6,'2022-06-06'),
(37,37,37,4,310000,5,'2022-07-17'),
(38,38,38,5,430000,8,'2022-08-28'),
(39,39,39,1,640000,10,'2022-09-09'),
(40,40,40,2,200000,3,'2022-10-30'),
(41,41,41,3,350000,5,'2022-01-10'),
(42,42,42,4,240000,6,'2022-02-21'),
(43,43,43,5,530000,7,'2022-03-12'),
(44,44,44,1,580000,9,'2022-04-23'),
(45,45,45,2,185000,4,'2022-05-04'),
(46,46,46,3,410000,6,'2022-06-15'),
(47,47,47,4,320000,5,'2022-07-26'),
(48,48,48,5,440000,8,'2022-08-07'),
(49,49,49,1,650000,10,'2022-09-18'),
(50,50,50,2,210000,3,'2022-10-29');

INSERT INTO EMI_Payments VALUES
(1,1,'2023-01-01',5000,'Paid'),
(2,2,'2023-01-02',4000,'Paid'),
(3,3,'2023-01-03',4500,'Paid'),
(4,4,'2023-01-04',6000,'Paid'),
(5,5,'2023-01-05',3500,'Paid'),
(6,6,'2023-01-06',4800,'Paid'),
(7,7,'2023-01-07',4200,'Paid'),
(8,8,'2023-01-08',5500,'Paid'),
(9,9,'2023-01-09',7000,'Paid'),
(10,10,'2023-01-10',3000,'Paid'),
(11,11,'2023-02-01',5200,'Paid'),
(12,12,'2023-02-02',4100,'Paid'),
(13,13,'2023-02-03',4600,'Paid'),
(14,14,'2023-02-04',6100,'Paid'),
(15,15,'2023-02-05',3600,'Paid'),
(16,16,'2023-02-06',4900,'Paid'),
(17,17,'2023-02-07',4300,'Paid'),
(18,18,'2023-02-08',5600,'Paid'),
(19,19,'2023-02-09',7100,'Paid'),
(20,20,'2023-02-10',3100,'Paid'),
(21,21,'2023-03-01',5300,'Paid'),
(22,22,'2023-03-02',4200,'Paid'),
(23,23,'2023-03-03',4700,'Paid'),
(24,24,'2023-03-04',6200,'Paid'),
(25,25,'2023-03-05',3700,'Paid'),
(26,26,'2023-03-06',5000,'Paid'),
(27,27,'2023-03-07',4400,'Paid'),
(28,28,'2023-03-08',5700,'Paid'),
(29,29,'2023-03-09',7200,'Paid'),
(30,30,'2023-03-10',3200,'Paid'),
(31,31,'2023-04-01',5400,'Paid'),
(32,32,'2023-04-02',4300,'Paid'),
(33,33,'2023-04-03',4800,'Paid'),
(34,34,'2023-04-04',6300,'Paid'),
(35,35,'2023-04-05',3800,'Paid'),
(36,36,'2023-04-06',5100,'Paid'),
(37,37,'2023-04-07',4500,'Paid'),
(38,38,'2023-04-08',5800,'Paid'),
(39,39,'2023-04-09',7300,'Paid'),
(40,40,'2023-04-10',3300,'Paid'),
(41,41,'2023-05-01',5500,'Paid'),
(42,42,'2023-05-02',4400,'Paid'),
(43,43,'2023-05-03',4900,'Paid'),
(44,44,'2023-05-04',6400,'Paid'),
(45,45,'2023-05-05',3900,'Paid'),
(46,46,'2023-05-06',5200,'Paid'),
(47,47,'2023-05-07',4600,'Paid'),
(48,48,'2023-05-08',5900,'Paid'),
(49,49,'2023-05-09',7400,'Paid'),
(50,50,'2023-05-10',3400,'Paid');

SELECT COUNT(*) FROM Customers;
SELECT COUNT(*) FROM Loans;
SELECT COUNT(*) FROM EMI_Payments;

-- loan approval check
DELIMITER $$
CREATE TRIGGER CheckCreditScore
BEFORE INSERT ON Loans
FOR EACH ROW
BEGIN
DECLARE score INT;
SELECT credit_score INTO score
FROM Customers
WHERE customer_id = NEW.customer_id;
IF score < 600 THEN
SET NEW.customer_id = NULL;
END IF;
END$$
DELIMITER ;

-- emi auto status
DELIMITER $$
CREATE TRIGGER EMI_Status
BEFORE INSERT ON EMI_Payments
FOR EACH ROW
BEGIN
IF NEW.amount_paid > 0 THEN
SET NEW.status = 'Paid';
END IF;
END $$
DELIMITER ;

-- customer loan details
SELECT c.name, l.loan_amount
FROM Customers c
JOIN Loans l
ON c.customer_id = l.customer_id;

-- customer loan with branch
SELECT c.name, b.branch_name, l.loan_amount
FROM Customers c
JOIN Loans l ON c.customer_id = l.customer_id
JOIN Branch b ON l.branch_id = b.branch_id;

-- loan type + interest
SELECT c.name, lt.loan_name, lt.interest_rate
FROM Customers c
JOIN Loans l ON c.customer_id = l.customer_id
JOIN Loan_Type lt ON l.loan_type_id = lt.loan_type_id;

-- total loan by customer
SELECT customer_id, SUM(loan_amount) AS Total_Loan
FROM Loans
GROUP BY customer_id;

-- total loan by branch
SELECT branch_id, SUM(loan_amount) AS Total_Loan
FROM Loans
GROUP BY branch_id;

-- monthly emi collection
SELECT MONTH(payment_date) AS Month,
SUM(amount_paid) AS Total_EMI
FROM EMI_Payments
GROUP BY Month;

-- rank loan amount
SELECT customer_id,
loan_amount,
RANK() OVER (ORDER BY loan_amount DESC) AS Loan_Rank
FROM Loans;

-- dense rank by branch
SELECT branch_id,
loan_amount,
DENSE_RANK() OVER (PARTITION BY branch_id ORDER BY loan_amount DESC) AS Branch_Rank
FROM Loans;

-- emi row order
SELECT loan_id,
payment_date,
ROW_NUMBER() OVER (PARTITION BY loan_id ORDER BY payment_date) AS EMI_Number
FROM EMI_Payments;

-- running emi total
SELECT loan_id,
payment_date,
amount_paid,
SUM(amount_paid) OVER (
PARTITION BY loan_id
ORDER BY payment_date
) AS Running_Total
FROM EMI_Payments;

-- high loan customer
WITH HighLoanCustomers AS (
SELECT customer_id, loan_amount
FROM Loans
WHERE loan_amount > 500000
)
SELECT * FROM HighLoanCustomers;

-- emi count
WITH EMI_Count AS (
SELECT loan_id, COUNT(payment_id) AS EMI_Total
FROM EMI_Payments
GROUP BY loan_id
)
SELECT * FROM EMI_Count;

-- customer loan summary
CREATE VIEW CustomerLoanSummary AS
SELECT c.name, l.loan_amount, l.tenure_years
FROM Customers c
JOIN Loans l
ON c.customer_id = l.customer_id;

-- branch loan report
CREATE VIEW BranchLoanReport AS
SELECT b.branch_name, SUM(l.loan_amount) AS Total_Loan
FROM Loans l
JOIN Branch b
ON l.branch_id = b.branch_id
GROUP BY b.branch_name;

-- stored procedure for total loan by customer
DELIMITER $$
CREATE PROCEDURE TotalLoanByCustomer(IN cust_id INT)
BEGIN
SELECT SUM(loan_amount)
FROM Loans
WHERE customer_id = cust_id;
END $$
DELIMITER ;

-- emi report
DELIMITER $$
CREATE PROCEDURE EMI_Report(IN loan INT)
BEGIN
SELECT *
FROM EMI_Payments
WHERE loan_id = loan;
END $$
DELIMITER ;

-- high risk customers
DELIMITER $$
CREATE PROCEDURE HighRiskCustomers()
BEGIN
SELECT name, credit_score
FROM Customers
WHERE credit_score < 650;
END $$
DELIMITER ;

CALL TotalLoanByCustomer(5);
CALL EMI_Report(10);
CALL HighRiskCustomers();
