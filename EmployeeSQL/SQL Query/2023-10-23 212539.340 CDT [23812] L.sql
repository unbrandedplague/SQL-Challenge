2023-10-23 21:25:39.340 CDT [23812] LOG:  could not receive data from client: An existing connection was forcibly closed by the remote host.
	
2023-10-23 21:26:39.461 CDT [27336] LOG:  could not receive data from client: An existing connection was forcibly closed by the remote host.
	
2023-10-23 21:50:03.096 CDT [24140] ERROR:  syntax error at or near "emp_no" at character 1020
2023-10-23 21:50:03.096 CDT [24140] STATEMENT:  -- Create the "Departments" table
	CREATE TABLE Departments(
		dept_no CHAR(4) PRIMARY KEY, -- Primary key
		dept_name VARCHAR(255) NOT NULL -- not null constraint
	);
	
	-- Create the "titles" table
	CREATE TABLE Titles (
		title_id CHAR(4) PRIMARY KEY, --Primary key
		title VARCHAR(255) NOT NULL
	);
	
	-- create the "Employees" table
	CREATE TABLE Employees (
		emp_no INT PRIMARY KEY, 
		emp_title_id CHAR(4), --Foreign key
		first_name VARCHAR(255),
		last_name VARCHAR(255),
		sex CHAR(1),
		hire_Date DATE,
		FOREIGN KEY (emp_tite_id) REFERENCES Titles(title_id) -- foreign key reference
	);
	
	-- Create the "Salaries" table
	CREATE TABLE Salaries (
		emp_no INT PRIMARY KEY,
		salary INT NOT NULL
	);
	
	-- Create the "Dept_Emp" table
	CREATE TABLE Dept_Emp (
		emp_no INT,
		dept_no CHAR(4),
		PRIMARY KEY (emp_no, dept_no), -- composite primary key
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
	);
	
	-- create the "dept_manager" table
	CREATE TABLE Dept_Manager(
		dept_no CHAR(4)
		emp_no INT,
		PRIMARY KEY (dept_no, emp_no),
		FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
	);
2023-10-23 21:52:53.980 CDT [24140] ERROR:  column "emp_tite_id" referenced in foreign key constraint does not exist
2023-10-23 21:52:53.980 CDT [24140] STATEMENT:  -- Create the "Departments" table
	CREATE TABLE Departments(
		dept_no CHAR(4) PRIMARY KEY, -- Primary key
		dept_name VARCHAR(255) NOT NULL -- not null constraint
	);
	
	-- Create the "titles" table
	CREATE TABLE Titles (
		title_id CHAR(4) PRIMARY KEY, --Primary key
		title VARCHAR(255) NOT NULL
	);
	
	-- create the "Employees" table
	CREATE TABLE Employees (
		emp_no INT PRIMARY KEY, 
		emp_title_id CHAR(4), --Foreign key
		first_name VARCHAR(255),
		last_name VARCHAR(255),
		sex CHAR(1),
		hire_Date DATE,
		FOREIGN KEY (emp_tite_id) REFERENCES Titles(title_id) -- foreign key reference
	);
	
	-- Create the "Salaries" table
	CREATE TABLE Salaries (
		emp_no INT PRIMARY KEY,
		salary INT NOT NULL
	);
	
	-- Create the "Dept_Emp" table
	CREATE TABLE Dept_Emp (
		emp_no INT,
		dept_no CHAR(4),
		PRIMARY KEY (emp_no, dept_no), -- composite primary key
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
	);
	
	-- create the "dept_manager" table
	CREATE TABLE Dept_Manager(
		dept_no CHAR(4),
		emp_no INT,
		PRIMARY KEY (dept_no, emp_no),
		FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
	);
2023-10-23 21:59:56.680 CDT [24140] ERROR:  relation "departments" already exists
2023-10-23 21:59:56.680 CDT [24140] STATEMENT:  -- Create the "Departments" table
	CREATE TABLE Departments(
		dept_no CHAR(4) PRIMARY KEY, -- Primary key
		dept_name VARCHAR(255) NOT NULL -- not null constraint
	);
	
	-- Create the "titles" table
	CREATE TABLE Titles (
		title_id CHAR(4) PRIMARY KEY, --Primary key
		title VARCHAR(255) NOT NULL
	);
	
	-- create the "Employees" table
	CREATE TABLE Employees (
		emp_no INT PRIMARY KEY, 
		emp_title_id CHAR(4), --Foreign key
		first_name VARCHAR(255),
		last_name VARCHAR(255),
		sex CHAR(1),
		hire_Date DATE,
		FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id) -- foreign key reference
	);
	
	-- Create the "Salaries" table
	CREATE TABLE Salaries (
		emp_no INT PRIMARY KEY,
		salary INT NOT NULL
	);
	
	-- Create the "Dept_Emp" table
	CREATE TABLE Dept_Emp (
		emp_no INT,
		dept_no CHAR(4),
		PRIMARY KEY (emp_no, dept_no), -- composite primary key
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
	);
	
	-- create the "dept_manager" table
	CREATE TABLE Dept_Manager(
		dept_no CHAR(4),
		emp_no INT,
		PRIMARY KEY (dept_no, emp_no),
		FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
	);
	
	-- Import the "departments.csv"
	COPY Departments FROM '/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/departments.csv' DELIMITER ',' CSV HEADER;
2023-10-23 22:24:54.408 CDT [1520] ERROR:  could not open file "SQL-Challenge/SQL-Challenge/EmployeeSQL/data/departments.csv " for reading: No such file or directory
2023-10-23 22:24:54.408 CDT [1520] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2023-10-23 22:24:54.408 CDT [1520] STATEMENT:  -- Import data into the departments table
	COPY "Departments" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/departments.csv 'DELIMITER ',' CSV HEADER;
	-- Import data into the department employees table
	COPY "Department Employees" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/dept_emp.csv' DELIMITER ',' CSV HEADER;
	-- import data into the department manager table
	COPY "Department Manager" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/dept_manager.csv' DELIMITER ',' CSV HEADER;
	--import data into the employees table
	COPY "Employees" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/employees.csv' DELIMITER ',' CSV HEADER;
	--import data into the salaries table
	COPY "Salaries" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/salaries.csv' DELIMITER ',' CSV HEADER;
	--import data into the titles table
	COPY "Titles" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/titles.csv' DELIMITER ',' CSV HEADER;
2023-10-23 22:27:50.061 CDT [1520] ERROR:  could not open file "SQL-Challenge/SQL-Challenge/EmployeeSQL/data/departments.csv" for reading: No such file or directory
2023-10-23 22:27:50.061 CDT [1520] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2023-10-23 22:27:50.061 CDT [1520] STATEMENT:  -- Import data into the departments table
	COPY "Departments" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/departments.csv' DELIMITER ',' CSV HEADER;
	-- Import data into the department employees table
	COPY "Department Employees" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/dept_emp.csv' DELIMITER ',' CSV HEADER;
	-- import data into the department manager table
	COPY "Department Manager" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/dept_manager.csv' DELIMITER ',' CSV HEADER;
	--import data into the employees table
	COPY "Employees" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/employees.csv' DELIMITER ',' CSV HEADER;
	--import data into the salaries table
	COPY "Salaries" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/salaries.csv' DELIMITER ',' CSV HEADER;
	--import data into the titles table
	COPY "Titles" FROM 'SQL-Challenge/SQL-Challenge/EmployeeSQL/data/titles.csv' DELIMITER ',' CSV HEADER;
2023-10-23 22:30:30.038 CDT [1520] ERROR:  could not open file "C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\departments.csv" for reading: Permission denied
2023-10-23 22:30:30.038 CDT [1520] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2023-10-23 22:30:30.038 CDT [1520] STATEMENT:  -- Import data into the departments table
	COPY "Departments" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\departments.csv' DELIMITER ',' CSV HEADER;
	-- Import data into the department employees table
	COPY "Department Employees" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\dept_emp.csv' DELIMITER ',' CSV HEADER;
	-- import data into the department manager table
	COPY "Department Manager" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\dept_manager.csv' DELIMITER ',' CSV HEADER;
	--import data into the employees table
	COPY "Employees" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\employees.csv' DELIMITER ',' CSV HEADER;
	--import data into the salaries table
	COPY "Salaries" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\salaries.csv' DELIMITER ',' CSV HEADER;
	--import data into the titles table
	COPY "Titles" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\titles.csv' DELIMITER ',' CSV HEADER;
2023-10-23 22:32:03.963 CDT [1520] ERROR:  syntax error at or near "\" at character 43
2023-10-23 22:32:03.963 CDT [1520] STATEMENT:  -- Import data into the departments table
	\copy "Departments" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\departments.csv' DELIMITER ',' CSV HEADER;
	-- Import data into the department employees table
	\copy "Department Employees" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\dept_emp.csv' DELIMITER ',' CSV HEADER;
	-- import data into the department manager table
	\copy "Department Manager" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\dept_manager.csv' DELIMITER ',' CSV HEADER;
	--import data into the employees table
	\copy "Employees" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\employees.csv' DELIMITER ',' CSV HEADER;
	--import data into the salaries table
	\copy "Salaries" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\salaries.csv' DELIMITER ',' CSV HEADER;
	--import data into the titles table
	\copy "Titles" FROM 'C:\Users\zombi\SQL-Challenge\SQL-Challenge\EmployeeSQL\data\titles.csv' DELIMITER ',' CSV HEADER;
2023-10-23 22:33:55.257 CDT [1520] ERROR:  syntax error at or near "\" at character 43
2023-10-23 22:33:55.257 CDT [1520] STATEMENT:  -- Import data into the departments table
	\copy "Departments" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/departments.csv' DELIMITER ',' CSV HEADER;
	-- Import data into the department employees table
	\copy "Department Employees" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/dept_emp.csv' DELIMITER ',' CSV HEADER;
	-- import data into the department manager table
	\copy "Department Manager" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/dept_manager.csv' DELIMITER ',' CSV HEADER;
	--import data into the employees table
	\copy "Employees" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/employees.csv' DELIMITER ',' CSV HEADER;
	--import data into the salaries table
	\copy "Salaries" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/salaries.csv' DELIMITER ',' CSV HEADER;
	--import data into the titles table
	\copy "Titles" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/titles.csv' DELIMITER ',' CSV HEADER;
2023-10-23 22:35:01.650 CDT [1520] ERROR:  could not open file "C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/departments.csv" for reading: Permission denied
2023-10-23 22:35:01.650 CDT [1520] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2023-10-23 22:35:01.650 CDT [1520] STATEMENT:  -- Import data into the departments table
	COPY "Departments" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/departments.csv' DELIMITER ',' CSV HEADER;
	-- Import data into the department employees table
	COPY "Department Employees" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/dept_emp.csv' DELIMITER ',' CSV HEADER;
	-- import data into the department manager table
	COPY "Department Manager" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/dept_manager.csv' DELIMITER ',' CSV HEADER;
	--import data into the employees table
	COPY "Employees" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/employees.csv' DELIMITER ',' CSV HEADER;
	--import data into the salaries table
	COPY "Salaries" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/salaries.csv' DELIMITER ',' CSV HEADER;
	--import data into the titles table
	COPY "Titles" FROM 'C:/Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/titles.csv' DELIMITER ',' CSV HEADER;
2023-10-23 22:41:26.653 CDT [1520] ERROR:  could not open file "EmployeeSQL/data/departments.csv" for reading: No such file or directory
2023-10-23 22:41:26.653 CDT [1520] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2023-10-23 22:41:26.653 CDT [1520] STATEMENT:  -- Import data into the departments table
	COPY "Departments" FROM 'EmployeeSQL/data/departments.csv' DELIMITER ',' CSV HEADER;
	-- Import data into the department employees table
	COPY "Department Employees" FROM 'EmployeeSQL/data/dept_emp.csv' DELIMITER ',' CSV HEADER;
	-- import data into the department manager table
	COPY "Department Manager" FROM 'EmployeeSQL/data/dept_manager.csv' DELIMITER ',' CSV HEADER;
	--import data into the employees table
	COPY "Employees" FROM 'EmployeeSQL/data/employees.csv' DELIMITER ',' CSV HEADER;
	--import data into the salaries table
	COPY "Salaries" FROM 'EmployeeSQL/data/salaries.csv' DELIMITER ',' CSV HEADER;
	--import data into the titles table
	COPY "Titles" FROM 'EmployeeSQL/data/titles.csv' DELIMITER ',' CSV HEADER;
2023-10-23 22:43:07.245 CDT [1520] ERROR:  could not open file "EmployeeSQL/data/departments.csv" for reading: No such file or directory
2023-10-23 22:43:07.245 CDT [1520] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2023-10-23 22:43:07.245 CDT [1520] STATEMENT:  -- Import data into the departments table
	COPY "Departments" FROM 'EmployeeSQL/data/departments.csv' DELIMITER ',' CSV HEADER;
	-- Import data into the department employees table
	COPY "Department Employees" FROM 'EmployeeSQL/data/dept_emp.csv' DELIMITER ',' CSV HEADER;
	-- import data into the department manager table
	COPY "Department Manager" FROM 'EmployeeSQL/data/dept_manager.csv' DELIMITER ',' CSV HEADER;
	--import data into the employees table
	COPY "Employees" FROM 'EmployeeSQL/data/employees.csv' DELIMITER ',' CSV HEADER;
	--import data into the salaries table
	COPY "Salaries" FROM 'EmployeeSQL/data/salaries.csv' DELIMITER ',' CSV HEADER;
	--import data into the titles table
	COPY "Titles" FROM 'EmployeeSQL/data/titles.csv' DELIMITER ',' CSV HEADER;
2023-10-23 22:43:26.431 CDT [1520] ERROR:  syntax error at or near "C" at character 1
2023-10-23 22:43:26.431 CDT [1520] STATEMENT:  C:/Users/zombi/SQL-Challenge/SQL-Challenge/
2023-10-23 22:45:27.041 CDT [1520] ERROR:  could not open file "Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/departments.csv" for reading: No such file or directory
2023-10-23 22:45:27.041 CDT [1520] HINT:  COPY FROM instructs the PostgreSQL server process to read a file. You may want a client-side facility such as psql's \copy.
2023-10-23 22:45:27.041 CDT [1520] STATEMENT:  -- Import data into the departments table
	COPY "Departments" FROM 'Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/departments.csv' DELIMITER ',' CSV HEADER;
	-- Import data into the department employees table
	COPY "Department Employees" FROM 'Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/dept_emp.csv' DELIMITER ',' CSV HEADER;
	-- import data into the department manager table
	COPY "Department Manager" FROM 'Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/dept_manager.csv' DELIMITER ',' CSV HEADER;
	--import data into the employees table
	COPY "Employees" FROM 'Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/employees.csv' DELIMITER ',' CSV HEADER;
	--import data into the salaries table
	COPY "Salaries" FROM 'Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/salaries.csv' DELIMITER ',' CSV HEADER;
	--import data into the titles table
	COPY "Titles" FROM 'Users/zombi/SQL-Challenge/SQL-Challenge/EmployeeSQL/data/titles.csv' DELIMITER ',' CSV HEADER;
2023-10-23 22:47:42.338 CDT [13944] ERROR:  insert or update on table "Department Employees" violates foreign key constraint "dept_emp_emp_no_fkey"
2023-10-23 22:47:42.338 CDT [13944] DETAIL:  Key (emp_no)=(10001) is not present in table "Employees".
2023-10-23 22:47:42.338 CDT [13944] STATEMENT:  COPY  public."Department Employees" ( emp_no, dept_no ) FROM STDIN  DELIMITER ',' CSV   HEADER  QUOTE '"' ESCAPE '''';
2023-10-23 22:51:37.123 CDT [32988] ERROR:  value too long for type character(4)
2023-10-23 22:51:37.123 CDT [32988] CONTEXT:  COPY Titles, line 2, column title_id: "s0001"
2023-10-23 22:51:37.123 CDT [32988] STATEMENT:  COPY  public."Titles" ( title_id, title ) FROM STDIN  DELIMITER ',' CSV   HEADER  QUOTE '"' ESCAPE '''';
2023-10-23 22:53:26.384 CDT [27380] ERROR:  relation "titles" does not exist
2023-10-23 22:53:26.384 CDT [27380] STATEMENT:  -- alter char length in title
	ALTER TABLE Titles ALTER COLUMN title_id TYPE CHAR(5);
2023-10-23 22:53:57.046 CDT [27380] ERROR:  relation "titles" does not exist
2023-10-23 22:53:57.046 CDT [27380] STATEMENT:  -- alter char length in title
	ALTER TABLE Titles ALTER COLUMN title_id TYPE CHAR(5);
2023-10-23 22:55:17.977 CDT [27380] ERROR:  relation "titles" does not exist
2023-10-23 22:55:17.977 CDT [27380] STATEMENT:  -- alter char length in title
	ALTER TABLE Titles ALTER COLUMN title_id TYPE CHAR(5);
2023-10-23 22:55:43.826 CDT [27380] ERROR:  relation "titles" does not exist
2023-10-23 22:55:43.826 CDT [27380] STATEMENT:  -- alter char length in title
	ALTER TABLE Titles ALTER COLUMN title_id TYPE CHAR(5);
2023-10-23 22:57:08.401 CDT [27380] ERROR:  syntax error at or near "CHAR" at character 128
2023-10-23 22:57:08.401 CDT [27380] STATEMENT:  --SELECT table_name
	--FROM information_schema.tables
	--WHERE table_schema = 'public';
	ALTER TABLE Titles ALTER COLUMN title_id CHAR(5);
2023-10-23 22:58:10.652 CDT [27380] ERROR:  relation "titles" does not exist
2023-10-23 22:58:10.652 CDT [27380] STATEMENT:  --SELECT table_name
	--FROM information_schema.tables
	--WHERE table_schema = 'public';
	ALTER TABLE Titles ALTER COLUMN title_id TYPE VARCHAR(5);
2023-10-23 22:59:56.781 CDT [26216] ERROR:  relation "titles" does not exist
2023-10-23 22:59:56.781 CDT [26216] STATEMENT:  ALTER TABLE Titles ALTER COLUMN title_id TYPE VARCHAR(5); -- Change the maximum length as needed (e.g., VARCHAR(10)).
	
2023-10-23 23:03:25.674 CDT [27708] ERROR:  extra data after last expected column
2023-10-23 23:03:25.674 CDT [27708] CONTEXT:  COPY Employees, line 2: "473302,s0001,7/25/1953,Hideyuki,Zallocco,M,4/28/1990"
2023-10-23 23:03:25.674 CDT [27708] STATEMENT:  COPY  public."Employees" ( emp_no, emp_title_id, first_name, last_name, sex, hire_date ) FROM STDIN  DELIMITER ',' CSV   HEADER  QUOTE '"' ESCAPE '''';
2023-10-23 23:08:50.111 CDT [26216] ERROR:  relation "employees" does not exist
2023-10-23 23:08:50.111 CDT [26216] STATEMENT:  -- SELECT table_name
	-- FROM information_schema.tables
	-- WHERE table_schema = 'public';
	--ALTER TABLE "Titles" ALTER COLUMN title_id TYPE VARCHAR(10);
	ALTER TABLE Employees ADD COLUMN birth_Date DATE;
2023-10-23 23:09:15.635 CDT [35384] ERROR:  extra data after last expected column
2023-10-23 23:09:15.635 CDT [35384] CONTEXT:  COPY Employees, line 2: "473302,s0001,7/25/1953,Hideyuki,Zallocco,M,4/28/1990"
2023-10-23 23:09:15.635 CDT [35384] STATEMENT:  COPY  public."Employees" ( emp_no, emp_title_id, first_name, last_name, sex, hire_date ) FROM STDIN  DELIMITER ',' CSV   HEADER  QUOTE '"' ESCAPE '''';
2023-10-23 23:11:06.784 CDT [32216] ERROR:  value too long for type character(4)
2023-10-23 23:11:06.784 CDT [32216] CONTEXT:  COPY Employees, line 2, column emp_title_id: "s0001"
2023-10-23 23:11:06.784 CDT [32216] STATEMENT:  COPY  public."Employees" ( emp_no, emp_title_id, first_name, last_name, sex, hire_date, birth_date ) FROM STDIN  DELIMITER ',' CSV   HEADER  QUOTE '"' ESCAPE '''';
2023-10-23 23:13:27.736 CDT [16716] ERROR:  value too long for type character(1)
2023-10-23 23:13:27.736 CDT [16716] CONTEXT:  COPY Employees, line 2, column sex: "Zallocco"
2023-10-23 23:13:27.736 CDT [16716] STATEMENT:  COPY  public."Employees" ( emp_no, emp_title_id, first_name, last_name, sex, hire_date, birth_date ) FROM STDIN  DELIMITER ',' CSV   HEADER  QUOTE '"' ESCAPE '''';
2023-10-23 23:16:56.129 CDT [26216] ERROR:  syntax error at or near "POSITION" at character 329
2023-10-23 23:16:56.129 CDT [26216] STATEMENT:  -- SELECT table_name
	-- FROM information_schema.tables
	-- WHERE table_schema = 'public';
	--ALTER TABLE "Titles" ALTER COLUMN title_id TYPE VARCHAR(10);
	--ALTER TABLE "Employees" ADD COLUMN birth_Date DATE;
	--ALTER TABLE "Employees" ALTER COLUMN emp_title_id TYPE VARCHAR(10);
	ALTER TABLE "Employees" ALTER COLUMN birth_date SET POSITION AFTER emp_title_id;
2023-10-23 23:17:40.063 CDT [26216] ERROR:  syntax error at or near "POSITION" at character 329
2023-10-23 23:17:40.063 CDT [26216] STATEMENT:  -- SELECT table_name
	-- FROM information_schema.tables
	-- WHERE table_schema = 'public';
	--ALTER TABLE "Titles" ALTER COLUMN title_id TYPE VARCHAR(10);
	--ALTER TABLE "Employees" ADD COLUMN birth_Date DATE;
	--ALTER TABLE "Employees" ALTER COLUMN emp_title_id TYPE VARCHAR(10);
	ALTER TABLE "Employees"
	ALTER COLUMN birth_date SET POSITION AFTER emp_title_id;
	
2023-10-23 23:17:46.764 CDT [26216] ERROR:  syntax error at or near "POSITION" at character 329
2023-10-23 23:17:46.764 CDT [26216] STATEMENT:  -- SELECT table_name
	-- FROM information_schema.tables
	-- WHERE table_schema = 'public';
	--ALTER TABLE "Titles" ALTER COLUMN title_id TYPE VARCHAR(10);
	--ALTER TABLE "Employees" ADD COLUMN birth_Date DATE;
	--ALTER TABLE "Employees" ALTER COLUMN emp_title_id TYPE VARCHAR(10);
	ALTER TABLE "Employees" ALTER COLUMN birth_date SET POSITION AFTER emp_title_id;
	
2023-10-23 23:19:59.978 CDT [26216] ERROR:  relation "employees" does not exist at character 391
2023-10-23 23:19:59.978 CDT [26216] STATEMENT:  -- SELECT table_name
	-- FROM information_schema.tables
	-- WHERE table_schema = 'public';
	--ALTER TABLE "Titles" ALTER COLUMN title_id TYPE VARCHAR(10);
	--ALTER TABLE "Employees" ADD COLUMN birth_Date DATE;
	--ALTER TABLE "Employees" ALTER COLUMN emp_title_id TYPE VARCHAR(10);
	CREATE TABLE Employees_New AS
	SELECT emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date
	FROM Employees;
	DROP TABLE Employees;
	ALTER TABLE Employees_New RENAME TO Employees;
2023-10-23 23:20:37.531 CDT [26216] ERROR:  relation "employees" does not exist at character 391
2023-10-23 23:20:37.531 CDT [26216] STATEMENT:  -- SELECT table_name
	-- FROM information_schema.tables
	-- WHERE table_schema = 'public';
	--ALTER TABLE "Titles" ALTER COLUMN title_id TYPE VARCHAR(10);
	--ALTER TABLE "Employees" ADD COLUMN birth_Date DATE;
	--ALTER TABLE "Employees" ALTER COLUMN emp_title_id TYPE VARCHAR(10);
	CREATE TABLE Employees_New AS SELECT emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date FROM Employees;
	--DROP TABLE Employees;
	--ALTER TABLE Employees_New RENAME TO Employees;
2023-10-23 23:22:03.696 CDT [26216] ERROR:  cannot drop table "Employees" because other objects depend on it
2023-10-23 23:22:03.696 CDT [26216] DETAIL:  constraint dept_emp_emp_no_fkey on table "Department Employees" depends on table "Employees"
	constraint dept_manager_emp_no_fkey on table "Department Manager" depends on table "Employees"
2023-10-23 23:22:03.696 CDT [26216] HINT:  Use DROP ... CASCADE to drop the dependent objects too.
2023-10-23 23:22:03.696 CDT [26216] STATEMENT:  -- SELECT table_name
	-- FROM information_schema.tables
	-- WHERE table_schema = 'public';
	--ALTER TABLE "Titles" ALTER COLUMN title_id TYPE VARCHAR(10);
	--ALTER TABLE "Employees" ADD COLUMN birth_Date DATE;
	--ALTER TABLE "Employees" ALTER COLUMN emp_title_id TYPE VARCHAR(10);
	--CREATE TABLE Employees_New AS SELECT emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date FROM "Employees";
	DROP TABLE "Employees";
	--ALTER TABLE Employees_New RENAME TO Employees;
2023-10-23 23:23:33.797 CDT [26216] ERROR:  table "Employees_New" does not exist
2023-10-23 23:23:33.797 CDT [26216] STATEMENT:  -- SELECT table_name
	-- FROM information_schema.tables
	-- WHERE table_schema = 'public';
	--ALTER TABLE "Titles" ALTER COLUMN title_id TYPE VARCHAR(10);
	--ALTER TABLE "Employees" ADD COLUMN birth_Date DATE;
	--ALTER TABLE "Employees" ALTER COLUMN emp_title_id TYPE VARCHAR(10);
	--CREATE TABLE Employees_New AS SELECT emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date FROM "Employees";
	DROP TABLE "Employees_New";
	--ALTER TABLE Employees_New RENAME TO Employees;
2023-10-23 23:23:52.970 CDT [26216] ERROR:  table "Employees_New" does not exist
2023-10-23 23:23:52.970 CDT [26216] STATEMENT:  -- SELECT table_name
	-- FROM information_schema.tables
	-- WHERE table_schema = 'public';
	--ALTER TABLE "Titles" ALTER COLUMN title_id TYPE VARCHAR(10);
	--ALTER TABLE "Employees" ADD COLUMN birth_Date DATE;
	--ALTER TABLE "Employees" ALTER COLUMN emp_title_id TYPE VARCHAR(10);
	--CREATE TABLE Employees_New AS SELECT emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date FROM "Employees";
	DROP TABLE "Employees_New";
	--ALTER TABLE Employees_New RENAME TO Employees;
2023-10-23 23:24:04.089 CDT [26216] ERROR:  table "employees_New" does not exist
2023-10-23 23:24:04.089 CDT [26216] STATEMENT:  -- SELECT table_name
	-- FROM information_schema.tables
	-- WHERE table_schema = 'public';
	--ALTER TABLE "Titles" ALTER COLUMN title_id TYPE VARCHAR(10);
	--ALTER TABLE "Employees" ADD COLUMN birth_Date DATE;
	--ALTER TABLE "Employees" ALTER COLUMN emp_title_id TYPE VARCHAR(10);
	--CREATE TABLE Employees_New AS SELECT emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date FROM "Employees";
	DROP TABLE "employees_New";
	--ALTER TABLE Employees_New RENAME TO Employees;
2023-10-23 23:42:50.584 CDT [31884] LOG:  could not send data to client: An existing connection was forcibly closed by the remote host.
	
2023-10-23 23:42:50.584 CDT [31884] STATEMENT:  SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
	FROM "Employees" AS E
	JOIN "Salaries" AS S ON E.emp_no = S.emp_no;
	
2023-10-23 23:42:50.586 CDT [31884] ERROR:  canceling statement due to user request
2023-10-23 23:42:50.586 CDT [31884] STATEMENT:  SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
	FROM "Employees" AS E
	JOIN "Salaries" AS S ON E.emp_no = S.emp_no;
	
2023-10-23 23:42:50.589 CDT [31884] FATAL:  connection to client lost
2023-10-23 23:42:50.920 CDT [31604] LOG:  could not receive data from client: An existing connection was forcibly closed by the remote host.
	
2023-10-23 23:42:50.921 CDT [13864] LOG:  could not receive data from client: An existing connection was forcibly closed by the remote host.
	
2023-10-23 23:42:50.934 CDT [15364] LOG:  could not receive data from client: An existing connection was forcibly closed by the remote host.
	
2023-10-23 23:48:56.098 CDT [18344] LOG:  could not receive data from client: An existing connection was forcibly closed by the remote host.
	
2023-10-23 23:49:56.198 CDT [14552] LOG:  could not receive data from client: An existing connection was forcibly closed by the remote host.
	