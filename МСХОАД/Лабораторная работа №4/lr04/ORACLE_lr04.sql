-------
-- 2 --
-------
BEGIN

-- завершённые задачи за месяц:
SELECT 
    'Monthly' AS Period,
    EXTRACT(YEAR FROM end_date) AS Year, 
    EXTRACT(MONTH FROM end_date) AS Month, 
    NULL AS Quarter,
    COUNT(task_id) AS Tasks
FROM Task
WHERE status = 'Completed'
GROUP BY EXTRACT(YEAR FROM end_date), EXTRACT(MONTH FROM end_date)

UNION ALL

-- завершённые задачи за квартал:
SELECT 
    'Quarterly' AS Period,
    EXTRACT(YEAR FROM end_date) AS Year, 
    NULL AS Month,
    TO_CHAR(end_date, 'Q') AS Quarter, 
    COUNT(task_id) AS Tasks
FROM Task
WHERE status = 'Completed'
GROUP BY EXTRACT(YEAR FROM end_date), TO_CHAR(end_date, 'Q')

UNION ALL

-- завершённые задачи за год:
SELECT 
    'Annually' AS Period,
    EXTRACT(YEAR FROM end_date) AS Year, 
    NULL AS Month,
    NULL AS Quarter,
    COUNT(task_id) AS Tasks
FROM Task
WHERE status = 'Completed'
GROUP BY EXTRACT(YEAR FROM end_date);


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
    t.start_date >= TO_DATE('2023-01-01', 'YYYY-MM-DD') AND 
    t.end_date <= TO_DATE('2023-12-31', 'YYYY-MM-DD');

END;

-------
-- 4 --
-------
BEGIN

DECLARE
  page_size NUMBER := 20; -- Размер страницы
  page_number NUMBER := 2; -- Номер страницы
BEGIN
  FOR rec IN (
    SELECT task_id, title, ROW_NUMBER() OVER (ORDER BY task_id) rn
    FROM Task
  )
  LOOP
    IF rec.rn > (page_number - 1) * page_size AND rec.rn <= page_number * page_size THEN
      DBMS_OUTPUT.PUT_LINE('Task ID: ' || rec.task_id || ', Title: ' || rec.title);
    END IF;
  END LOOP;
END;


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

BEGIN
  FOR rec IN (
    SELECT set_id, ROW_NUMBER() OVER(PARTITION BY employee_id, task_id, report_id ORDER BY set_id) AS rn
    FROM Task_Set
  )
  LOOP
    IF rec.rn > 1 THEN
      DELETE FROM Task_Set WHERE set_id = rec.set_id;
    END IF;
  END LOOP;
  COMMIT;
END;


END;

-------
-- 6 --
-------
BEGIN

SELECT 
    e.employee_id, 
    e.first_name, 
    e.last_name, 
    EXTRACT(MONTH FROM t.start_date) AS Month, 
    EXTRACT(YEAR FROM t.start_date) AS Year, 
    COUNT(CASE WHEN t.status = 'Completed' THEN 1 END) AS CompletedTasks, 
    COUNT(CASE WHEN t.status != 'Completed' THEN 1 END) AS UncompletedTasks
FROM 
    Employee e
JOIN 
    Task_Set ts ON e.employee_id = ts.employee_id
JOIN 
    Task t ON ts.task_id = t.task_id
WHERE 
    t.start_date >= ADD_MONTHS(SYSDATE, -6)
GROUP BY 
    e.employee_id, 
    e.first_name, 
    e.last_name, 
    EXTRACT(MONTH FROM t.start_date), 
    EXTRACT(YEAR FROM t.start_date)
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
VALUES (61, 'Complete Project Proposal', 'Develop and finalize the project proposal for client review.', 'Completed', TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-01-20', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-01-15 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-01-20 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (65, 'Complete Project Proposal', 'Develop and finalize the project proposal for client review.', 'Completed', TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-01-20', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-01-15 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-01-20 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (66, 'Complete Project Proposal', 'Develop and finalize the project proposal for client review.', 'Completed', TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-01-20', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-01-15 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-01-20 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (64, 31, 61, 45, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (65, 31, 65, 45, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (66, 31, 66, 45, 1);




SELECT 
    task_type, 
    employee_id, 
    task_count AS max_task_count
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
) 
WHERE 
    rn = 1;

END;