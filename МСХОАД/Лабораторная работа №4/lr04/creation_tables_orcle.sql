CREATE TABLE Employee (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    boss_id NUMBER,
    stage NUMBER,
    efficiency NUMBER,
    birthday DATE,
    position VARCHAR2(50),
    FOREIGN KEY (boss_id) 
    REFERENCES Employee(employee_id) 
);

CREATE TABLE Task_Set (
    set_id NUMBER PRIMARY KEY,
    employee_id NUMBER,
    task_id NUMBER,
    report_id NUMBER,
    count NUMBER,
    FOREIGN KEY (employee_id) 
    REFERENCES Employee(employee_id),
    FOREIGN KEY (task_id) 
    REFERENCES Task(task_id),
    FOREIGN KEY (report_id) 
    REFERENCES Task_Report(report_id)
);

CREATE TABLE Task (
    task_id NUMBER PRIMARY KEY,
    title VARCHAR2(200),
    description_task CLOB,
    status VARCHAR2(50),
    start_date DATE,
    end_date DATE,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    task_priority NUMBER
    --attachments BLOB
);

CREATE TABLE Task_Relationship (
    relationship_id NUMBER PRIMARY KEY,
    parent_id NUMBER,
    child_id NUMBER,
    FOREIGN KEY (parent_id) 
    REFERENCES Task(task_id),
    FOREIGN KEY (child_id) 
    REFERENCES Task(task_id)
);

CREATE TABLE Task_Report (
    report_id NUMBER PRIMARY KEY,
    title VARCHAR2(200),
    report_content CLOB,
    attachments BLOB,
    report_date DATE,
    report_time TIMESTAMP
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


