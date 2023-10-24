# SQL-Challenge
Employee Database Management
Data Modeling
Entity Relationship Diagram (ERD)
An Entity Relationship Diagram (ERD) is provided to illustrate the structure and relationships of the database tables. The ERD serves as a visual representation of how the tables are connected, and it helps in understanding the database's schema.

Table Schemas

All required columns are specified to capture the necessary data for each entity.
Columns are set to the correct data type to ensure data accuracy and efficiency.
Primary keys have been established for each table to uniquely identify records.
The database correctly references related tables using foreign keys, maintaining data integrity.
The NOT NULL constraint is applied to necessary columns to ensure essential data is always present.
Value length for columns is accurately defined to accommodate the data's requirements.

Data Engineering

The database defines tables with all the required columns to capture essential employee information, such as personal details, salaries, titles, and department information.
The data types of columns are carefully chosen to match the nature of the data they hold (e.g., INT, VARCHAR, DATE).
Primary keys are assigned to each table, ensuring record uniqueness.
Foreign keys are utilized to establish relationships between tables.
The NOT NULL constraint is implemented on columns where the presence of data is critical.
Columns accurately define the maximum value length to store data efficiently.

Data Analysis

List Employee Information: You can retrieve a list of employee information, including employee number, last name, first name, sex, and salary.

Hire Date Analysis: Analyze the hiring history by listing the first name, last name, and hire date for employees hired in 1986.

Department Managers: Obtain a list of department managers along with their department number, department name, employee number, last name, and first name.

Employee Department Information: Retrieve the department number for each employee, along with the employee's employee number, last name, first name, and department name.

Filter Employees by Name: List employees whose first name is "Hercules" and whose last name begins with the letter "B," including their first name, last name, and sex.

Sales Department Employees: Obtain a list of employees in the Sales department, including their employee number, last name, and first name.

Sales and Development Departments: List employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Last Name Frequency Counts: Generate a list of last names along with their frequency counts, ordered in descending order. This provides insights into how many employees share each last name.