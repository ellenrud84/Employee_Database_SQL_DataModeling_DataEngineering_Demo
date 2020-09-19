# Employee Database: A SQL Demo, Data Engineering/ Modeling & Analysis


## Background
This demo is a research project on employees of a fictional corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.
Based on these six files, tables were designed to hold the data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 

## Results:
TODO Add screenshots and descriptions of the following:
  image file of your ERD., 
  .sql file of your table schemata.
  .sql file of your queries.
  Jupyter Notebook of the data analysis

## Methods:
### Data Modeling: 
The CSVs were inspected and an ERD (Entity Relationship Diagram) of the tables was created using http://www.quickdatabasediagrams.com.

### Data Engineering:
A SQL table schema was created for each of the six CSV files using the ERD. Primary and Foreign Keys were added. When necessary, composite primary keys were created for a table.

Each CSV file was imported into the corresponding SQL table in the same order that the tables were created to avoid errors.

### Data Analysis:
Once the database was complete the data was analyzed. Queries were created to:

1. List thefollowing details of each employee: 
  * employee number
  * last name
  * first name
  * sex 
  * salary

2. List the first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: 
  * department number
  * department name
  * manager's employee number
  * manager's last name
  * manager's first name

4. List the department of each employee with the following information: 
  * employee number
  * employee last name
  * employee first name
  * department name

5. List first name, last name, and sex for employees whose first name is "Hercules" and whose last names begin with "B."

6. List all employees in the Sales department, including their:
  * employee number
  * last name
  * first name
  * department name

7. List all employees in the Sales and Development departments, including their:
  * employee number
  * last name
  * first name
  * department name

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### Data Visualization
The SQL database was imported into Pandas. 
The following visualizations were then generated:
  * A histogram to visualize the most common salary ranges for employees
  * A bar chart of average salary by title
