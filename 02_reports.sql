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
commit;

Select * from Students;

select Department,count(*) as stud_Dept from Students group by Department;
select BatchYear,avg(marks) as avg_Marks from Students group by BatchYear;
select Course,sum(FeesPaid) as TotalFee from Students group by Course;
select Department,Avg(marks) as avg_marks from Students group by Department having avg(marks)>70;
