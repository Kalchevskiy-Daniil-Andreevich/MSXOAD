-------
-- 2 --
-------
BEGIN

-- завершЄнные задачи за мес€ц:
SELECT 
    'Monthly' AS Period,
    DATEPART(YEAR, end_date) AS Year, 
    DATEPART(MONTH, end_date) AS Month, 
    NULL AS Quarter,
    COUNT(task_id) AS Tasks
FROM Task
WHERE status = 'Completed'
GROUP BY DATEPART(YEAR, end_date), DATEPART(MONTH, end_date)

UNION ALL

-- завершЄнные задачи за квартал:
SELECT 
    'Quarterly' AS Period,
    DATEPART(YEAR, end_date) AS Year, 
    NULL AS Month,
    DATEPART(QUARTER, end_date) AS Quarter, 
    COUNT(task_id) AS Tasks
FROM Task
WHERE status = 'Completed'
GROUP BY DATEPART(YEAR, end_date), DATEPART(QUARTER, end_date)

UNION ALL

-- завершЄнные задачи за год:
SELECT 
    'Annually' AS Period,
    DATEPART(YEAR, end_date) AS Year, 
    NULL AS Month,
    NULL AS Quarter,
    COUNT(task_id) AS Tasks
FROM Task
WHERE status = 'Completed'
GROUP BY DATEPART(YEAR, end_date)

END;



-------
-- 3 --
-------
BEGIN

SELECT 
    COUNT(CASE WHEN t.status = 'Completed' THEN 1 END) AS CompletedTasks, 
    COUNT(CASE WHEN t.status != 'Completed' THEN 1 END) AS UncompletedTasks,
    COUNT(CASE WHEN t.status = 'Completed' THEN 1 END) * 100.0 / COUNT(*) AS CompletedTasksPercentage,
    COUNT(CASE WHEN t.status != 'Completed' THEN 1 END) * 100.0 / COUNT(*) AS UncompletedTasksPercentage
FROM 
    Task t
WHERE 
    t.start_date >= '2023-01-01' AND 
    t.end_date <= '2023-12-31';

END;



-------
-- 4 --
-------
BEGIN

DECLARE @PageNumber AS INT, @RowsOfPage AS INT;
SET @PageNumber = 1;
SET @RowsOfPage = 20;

SELECT * 
FROM (
    SELECT 
        task_id, 
        title, 
        status, 
        ROW_NUMBER() OVER (ORDER BY task_id) AS RowNum
    FROM Task
) AS TasksWithRowNumbers
WHERE RowNum BETWEEN ((@PageNumber - 1) * @RowsOfPage + 1) 
                  AND (@PageNumber * @RowsOfPage)

END;



-------
-- 5 --
-------
BEGIN

select * from Task_Set;

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (61, 1, 1, 41, 5);
INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (62, 1, 1, 41, 5);
INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (63, 1, 1, 41, 5);

DELETE FROM Task_Set
WHERE set_id IN (
    SELECT set_id
    FROM (
        SELECT 
            set_id, 
            ROW_NUMBER() OVER(PARTITION BY employee_id, task_id, report_id ORDER BY set_id) AS RowNumber
        FROM 
            Task_Set
    ) AS subquery
    WHERE RowNumber > 1
);

END;



-------
-- 6 --
-------
BEGIN

SELECT 
    e.employee_id, 
    e.first_name, 
    e.last_name, 
    DATEPART(MONTH, t.start_date) AS Month, 
    DATEPART(YEAR, t.start_date) AS Year, 
    COUNT(CASE WHEN t.status = 'Completed' THEN 1 END) AS CompletedTasks, 
    COUNT(CASE WHEN t.status != 'Completed' THEN 1 END) AS UncompletedTasks
FROM 
    Employee e
JOIN 
    Task_Set ts ON e.employee_id = ts.employee_id
JOIN 
    Task t ON ts.task_id = t.task_id
WHERE 
    t.start_date >= DATEADD(MONTH, -6, GETDATE())
GROUP BY 
    e.employee_id, 
    e.first_name, 
    e.last_name, 
    DATEPART(MONTH, t.start_date), 
    DATEPART(YEAR, t.start_date)
ORDER BY 
    e.first_name, 
    e.last_name;


END;



-------
-- 7 --
-------
BEGIN

select * from Task;
select * from Task_Set;
INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (61, N'Complete Project Proposal', N'Develop and finalize the project proposal for client review.', N'Completed', '2023-01-15', '2023-01-20', '2023-01-15 10:00:00', '2023-01-20 16:00:00', 2);
INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (65, N'Complete Project Proposal', N'Develop and finalize the project proposal for client review.', N'Completed', '2023-01-15', '2023-01-20', '2023-01-15 10:00:00', '2023-01-20 16:00:00', 2);
INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (66, N'Complete Project Proposal', N'Develop and finalize the project proposal for client review.', N'Completed', '2023-01-15', '2023-01-20', '2023-01-15 10:00:00', '2023-01-20 16:00:00', 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (64, 31, 61, 45, 1);
INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (65, 31, 65, 45, 2);
INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (66, 31, 66, 45, 1);

UPDATE Task SET status = N'Completed' WHERE task_id = 61;

SELECT 
    task_type, 
    employee_id, 
    MAX(task_count) AS max_task_count
FROM (
    SELECT 
        t.title AS task_type, 
        ts.employee_id, 
        COUNT(*) AS task_count,
        ROW_NUMBER() OVER(PARTITION BY t.title ORDER BY COUNT(*) DESC) AS rn
    FROM 
        Task_Set ts
    JOIN 
        Task t ON ts.task_id = t.task_id
    WHERE 
        t.status = 'Completed'
    GROUP BY 
        t.title, 
        ts.employee_id
) AS subquery
WHERE 
    rn = 1
GROUP BY 
    task_type, 
    employee_id;


END;

