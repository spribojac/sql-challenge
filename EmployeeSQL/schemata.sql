-- Table Deletion
DROP TABLE "Department_Employees";
DROP TABLE "Department_Managers";
DROP TABLE "Departments";
DROP TABLE "Employees";
DROP TABLE "Salaries";
DROP TABLE "Titles";

-- Table Creation
CREATE TABLE "Departments" (
    "dept_no" varchar(10)   NOT NULL,
    "dept_name" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Department_Employees" (
    "emp_no" integer   NOT NULL
	"dept_no" varchar(10)   NOT NULL
);

CREATE TABLE "Department_Managers" (
    "dept_no" varchar(10)   NOT NULL,
    "emp_no" integer   NOT NULL
);

CREATE TABLE "Employees" (
    "emp_no" integer   NOT NULL,
    "emp_title_id" varchar(5)   NOT NULL,
    "birth_date" varchar(10)   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "sex" varchar(1)   NOT NULL,
    "hire_date" varchar(10)    NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Salaries" (
    "emp_no" integer   NOT NULL,
    "salary" integer   NOT NULL
);

CREATE TABLE "Titles" (
    "title_id" varchar(10)  NOT NULL,
    "title" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Department_Managers" ADD CONSTRAINT "fk_Department_Managers_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Department_Managers" ADD CONSTRAINT "fk_Department_Managers_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");




