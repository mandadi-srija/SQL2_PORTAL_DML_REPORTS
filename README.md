# 🎓 Student Portal Database Operations & Reports  
**Project Code:** SQL2_PORTAL_DML_REPORTS  

## 📌 Project Overview

This project simulates a **College Student Portal Database**.  

The Admin team needs to:
- Add new students
- Update marks and attendance
- Delete duplicate records safely
- Generate management reports

This project demonstrates **DML operations, Transactions, Aggregate functions, and Reports** using SQL Server.

---

## 🛠 Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- SQL (DML + Aggregate Functions)


---

## 📜 File Description

### 1️⃣ 01_dml_operations.sql

This script performs:

✔ Table creation (Students table)  
✔ INSERT – Add 5 new students  
✔ UPDATE – Modify marks & attendance for 3 students  
✔ DELETE – Remove duplicate records safely  
✔ TRANSACTION management  
   - BEGIN TRANSACTION  
   - COMMIT  
   - ROLLBACK example  

This ensures **data safety and consistency**.

---

### 2️⃣ 02_reports.sql

This script generates reports using Aggregate functions:

✔ COUNT – Total students per department  
✔ AVG – Average marks per batch  
✔ SUM – Total fees collected per course  
✔ GROUP BY with HAVING – Departments with average marks > 70  

These reports help management analyze performance.

---

### 3️⃣ output/report_results.docx

This file contains:

📸 Screenshots of:
- Insert results  
- Update results  
- Delete operation  
- Transaction rollback example  
- All report query outputs  

The Word document provides **visual proof of execution** with proper labeling.

