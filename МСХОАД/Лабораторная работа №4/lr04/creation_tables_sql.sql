CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    boss_id INT,
    stage INT,
    efficiency INT,
    birthday DATE,
    position NVARCHAR(50),
    FOREIGN KEY (boss_id) 
    REFERENCES Employee(employee_id) 
);

CREATE TABLE Task (
    task_id INT PRIMARY KEY,
    title NVARCHAR(200),
    description_task NVARCHAR(MAX),
    status NVARCHAR(50),
    start_date DATE,
    end_date DATE,
    start_time DATETIME2,
    end_time DATETIME2,
    task_priority INT
);

CREATE TABLE Task_Report (
    report_id INT PRIMARY KEY,
    title NVARCHAR(200),
    report_content NVARCHAR(MAX),
    report_date DATE,
    report_time DATETIME2
);

CREATE TABLE Task_Set (
    set_id INT PRIMARY KEY,
    employee_id INT,
    task_id INT,
    report_id INT,
    count INT,
    FOREIGN KEY (employee_id) 
    REFERENCES Employee(employee_id),
    FOREIGN KEY (task_id) 
    REFERENCES Task(task_id),
    FOREIGN KEY (report_id) 
    REFERENCES Task_Report(report_id)
);

CREATE TABLE Task_Relationship (
    relationship_id INT PRIMARY KEY,
    parent_id INT,
    child_id INT,
    FOREIGN KEY (parent_id) 
    REFERENCES Task(task_id),
    FOREIGN KEY (child_id) 
    REFERENCES Task(task_id)
);

DROP TABLE Employee;
DROP TABLE Task_Report;
DROP TABLE Task;
DROP TABLE Task_Relationship;
DROP TABLE Task_Set;

SELECT * FROM Employee;
SELECT * FROM Task_Report;
SELECT * FROM Task;
SELECT * FROM Task_Relationship;
SELECT * FROM Task_Set;

BEGIN TRANSACTION;
COMMIT TRANSACTION;
