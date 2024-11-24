CREATE TABLE Employees (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(50)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "sex" varchar(50)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE Titles (
    "title_id" varchar(50)   NOT NULL,
    "title" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE Departments (
    "dept_no" varchar(50)   NOT NULL,
    "dept_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE DepartmentManagers (
    "dept_no" varchar(50)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_DepartmentManagers" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE DepartmentEmployees (
    "dept_no" varchar(50)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_DepartmentEmployees" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE Salaries (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE Employees RENAME COLUMN "emp_title_id" TO "title_id";

ALTER TABLE Employees ADD CONSTRAINT "fk_Employees_title_id" FOREIGN KEY("title_id")
REFERENCES Titles ("title_id");

ALTER TABLE DepartmentManagers ADD CONSTRAINT "fk_DepartmentManagers_dept_no" FOREIGN KEY("dept_no")
REFERENCES Departments ("dept_no");

ALTER TABLE DepartmentManagers ADD CONSTRAINT "fk_DepartmentManagers_emp_no" FOREIGN KEY("emp_no")
REFERENCES Employees ("emp_no");

ALTER TABLE DepartmentEmployees ADD CONSTRAINT "fk_DepartmentEmployees_dept_no" FOREIGN KEY("dept_no")
REFERENCES Departments ("dept_no");

ALTER TABLE DepartmentEmployees ADD CONSTRAINT "fk_DepartmentEmployees_emp_no" FOREIGN KEY("emp_no")
REFERENCES Employees ("emp_no");

ALTER TABLE Salaries ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES Employees ("emp_no");


