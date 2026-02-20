CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Department VARCHAR(50),
    BatchYear INT,
    Marks INT,
    Attendance INT,
    Course VARCHAR(50),
    FeesPaid DECIMAL(10,2)
);

BEGIN TRANSACTION;

INSERT INTO Students VALUES (1, 'Amit Sharma', 'Computer Science', 2023, 78, 85, 'B.Tech', 50000);
INSERT INTO Students VALUES (2, 'Neha Verma', 'Computer Science', 2023, 82, 90, 'B.Tech', 50000);
INSERT INTO Students VALUES (3, 'Rahul Singh', 'Electronics', 2022, 65, 75, 'B.Tech', 48000);
INSERT INTO Students VALUES (4, 'Priya Mehta', 'Mechanical', 2023, 88, 92, 'B.Tech', 47000);
INSERT INTO Students VALUES (5, 'Karan Patel', 'Electronics', 2022, 72, 80, 'B.Tech', 48000);
INSERT INTO Students VALUES (6, 'Karan Patel', 'Electronics', 2022, 72, 80, 'B.Tech', 48000);
INSERT INTO Students VALUES (7, 'Karan Patel', 'Electronics', 2022, 72, 80, 'B.Tech', 48000);
INSERT INTO Students VALUES (8, 'Karan Patel', 'Electronics', 2022, 72, 80, 'B.Tech', 48000);



COMMIT;

Select * from Students;


BEGIN TRANSACTION;
Update Students set Attendance=95 where StudentID =1;
Update Students set Attendance=95 where StudentID=1;
Update Students set Marks = 90, Attendance = 96 where StudentID = 4;
COMMIT;

BEGIN TRANSACTION;
DELETE FROM Students
WHERE StudentID NOT IN (
    SELECT MIN(StudentID)
    FROM Students
    GROUP BY FullName, Department
);
commit;

BEGIN TRANSACTION;
UPDATE Students
SET Marks = 0;  
ROLLBACK; 

