# sql-challenge

I leveraged Xpert Learning Assistant because I received an error when altering the "Employees" table to reference the "Titles" table due to the mismatching "emp_title_id" and "title_id" columns.
  
    ALTER TABLE Employees RENAME COLUMN "emp_title_id" TO "title_id"; #Xpert Learning Assistant

    ALTER TABLE Employees ADD CONSTRAINT "fk_Employees_title_id" FOREIGN KEY("title_id")
    REFERENCES Titles ("title_id");
