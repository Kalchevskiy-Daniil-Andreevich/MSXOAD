use [bd_5sem];

--------------
-- Employee --
--------------
select * from Employee;
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (1, N'Иван', N'Иванов', NULL, 1, 0.85, CAST('1990-05-10' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (2, N'Екатерина', N'Екатеринова', 1, 2, 0.75, CAST('1985-09-12' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (3, N'Алексей', N'Алексеев', 2, 3, 0.95, CAST('1992-12-25' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (4, N'Ольга', N'Ольгова', 3, 1, 0.8, CAST('1987-07-03' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (5, N'Дмитрий', N'Дмитриев', 4, 2, 0.9, CAST('1995-02-20' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (6, N'Евгения', N'Евгеньева', 5, 3, 0.88, CAST('1980-08-14' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (7, N'Александр', N'Александров', 6, 1, 0.78, CAST('1993-04-28' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (8, N'Екатерина', N'Екатеринина', 7, 2, 0.92, CAST('1988-11-11' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (9, N'Михаил', N'Михайлов', 8, 3, 0.86, CAST('1997-03-19' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (10, N'Анастасия', N'Анастасиева', 9, 1, 0.81, CAST('1989-10-07' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (11, N'Игорь', N'Игорев', 10, 2, 0.93, CAST('1994-07-28' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (12, N'Наталья', N'Натальина', 11, 3, 0.87, CAST('1983-06-21' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (13, N'Алексей', N'Алексеев', 12, 1, 0.79, CAST('1988-07-14' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (14, N'София', N'Софиева', 13, 2, 0.94, CAST('1993-08-07' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (15, N'Григорий', N'Григорьев', 14, 3, 0.89, CAST('1985-09-30' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (16, N'Павел', N'Павлов', 15, 1, 0.82, CAST('1990-11-18' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (17, N'Наталья', N'Натальина', 16, 2, 0.91, CAST('1995-12-01' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (18, N'Владислав', N'Владиславов', 17, 3, 0.84, CAST('2000-01-12' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (19, N'Светлана', N'Светланова', 18, 1, 0.77, CAST('1987-02-24' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (20, N'Максим', N'Максимов', 19, 2, 0.96, CAST('1992-03-06' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (21, N'Ирина', N'Иринина', 20, 3, 0.88, CAST('1981-04-14' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (22, N'Денис', N'Денисов', 19, 1, 0.82, CAST('1986-05-25' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (23, N'Татьяна', N'Татьянина', 18, 2, 0.93, CAST('1991-08-18' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (24, N'Сергей', N'Сергеев', 17, 3, 0.87, CAST('1984-11-30' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (25, N'Анна', N'Аннова', 16, 1, 0.79, CAST('1996-02-21' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (26, N'Максим', N'Максимов', 15, 2, 0.94, CAST('1982-03-15' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (27, N'Екатерина', N'Екатеринина', 14, 3, 0.89, CAST('1997-04-07' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (28, N'Дмитрий', N'Дмитриев', 13, 1, 0.81, CAST('1983-05-30' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (29, N'Ольга', N'Ольгова', 12, 2, 0.92, CAST('1988-06-12' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (30, N'Алексей', N'Алексеев', 11, 3, 0.86, CAST('1993-09-25' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (31, N'Наталья', N'Натальина', 10, 1, 0.77, CAST('1987-10-24' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (32, N'Игорь', N'Игорев', 9, 2, 0.96, CAST('1992-11-06' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (33, N'Анна', N'Аннова', 8, 3, 0.85, CAST('1980-12-18' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (34, N'Сергей', N'Сергеев', 7, 1, 0.78, CAST('1985-01-01' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (35, N'Мария', N'Мариева', 6, 2, 0.91, CAST('1990-02-12' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (36, N'Александр', N'Александров', 5, 3, 0.84, CAST('1995-03-24' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (37, N'Екатерина', N'Екатеринина', 4, 1, 0.79, CAST('1989-04-06' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (38, N'Павел', N'Павлов', 3, 2, 0.93, CAST('1994-05-18' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (39, N'София', N'Софиева', 2, 3, 0.88, CAST('1988-06-30' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (40, N'Григорий', N'Григорьев', 1, 1, 0.82, CAST('1997-07-12' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (41, N'Сергей', N'Сергеев', 10, 2, 0.85, CAST('1990-04-15' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (42, N'Ольга', N'Ольгова', 9, 3, 0.75, CAST('1985-08-12' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (43, N'Андрей', N'Андреев', 8, 1, 0.95, CAST('1992-11-25' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (44, N'Екатерина', N'Екатеринина', 7, 2, 0.8, CAST('1987-06-03' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (45, N'Александр', N'Александров', 6, 3, 0.9, CAST('1995-01-20' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (46, N'Евгения', N'Евгеньева', 5, 1, 0.88, CAST('1980-07-14' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (47, N'Михаил', N'Михайлов', 4, 2, 0.78, CAST('1993-03-28' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (48, N'Анастасия', N'Анастасиева', 3, 3, 0.92, CAST('1988-12-11' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (49, N'Игорь', N'Игорев', 2, 1, 0.86, CAST('1997-02-19' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (50, N'Наталья', N'Натальина', 1, 2, 0.81, CAST('1989-09-07' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (51, N'Алексей', N'Алексеев', 50, 3, 0.93, CAST('1994-06-28' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (52, N'София', N'Софиева', 49, 1, 0.87, CAST('1983-05-21' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (53, N'Григорий', N'Григорьев', 48, 2, 0.79, CAST('1988-06-14' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (54, N'Екатерина', N'Екатеринина', 47, 3, 0.94, CAST('1993-07-07' AS DATE), N'Менеджер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (55, N'Юлия', N'Юлиева', 46, 1, 0.89, CAST('1985-08-30' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (56, N'Павел', N'Павлов', 45, 2, 0.82, CAST('1990-09-18' AS DATE), N'Разработчик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (57, N'Наталья', N'Натальина', 44, 3, 0.91, CAST('1995-10-01' AS DATE), N'Дизайнер');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (58, N'Владислав', N'Владиславов', 43, 1, 0.84, CAST('2000-11-12' AS DATE), N'Аналитик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (59, N'Светлана', N'Светланова', 42, 2, 0.77, CAST('1987-12-24' AS DATE), N'Тестировщик');
INSERT INTO Employee (employee_id, first_name, last_name, boss_id, stage, efficiency, birthday, position) VALUES (60, N'Максим', N'Максимов', 41, 3, 0.96, CAST('1992-01-06' AS DATE), N'Разработчик');

-----------
-- Task --
-----------
select * from Task;
INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (1, N'Complete Project Proposal', N'Develop and finalize the project proposal for client review.', N'In Progress', '2023-01-15', '2023-01-20', '2023-01-15 10:00:00', '2023-01-20 16:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (2, N'Review and Approve Designs', N'Review the design concepts and provide feedback for approval.', N'Pending', '2023-01-21', '2023-01-25', '2023-01-21 14:00:00', '2023-01-25 18:00:00', 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (3, N'Code Refactoring', N'Refactor existing codebase for improved performance and maintainability.', N'Not Started', '2023-01-26', '2023-01-31', NULL, NULL, 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (4, N'User Acceptance Testing', N'Conduct user acceptance testing to ensure the software meets client requirements.', N'Pending', '2023-02-01', '2023-02-05', '2023-02-01 09:00:00', '2023-02-05 17:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (5, N'Debugging and Issue Resolution', N'Identify and resolve any bugs or issues found during testing phase.', N'Not Started', '2023-02-06', '2023-02-10', NULL, NULL, 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (6, N'Client Meeting', N'Schedule and conduct a meeting with the client to discuss project progress.', N'Pending', '2023-02-11', '2023-02-15', '2023-02-11 15:00:00', '2023-02-15 17:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (7, N'Database Optimization', N'Optimize database queries and performance for efficient data retrieval.', N'Not Started', '2023-02-16', '2023-02-20', NULL, NULL, 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (8, N'Prepare Project Documentation', N'Create and finalize project documentation for internal and external use.', N'In Progress', '2023-02-21', '2023-02-28', '2023-02-21 11:00:00', '2023-02-28 14:00:00', 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (9, N'Client Presentation', N'Prepare and deliver a presentation to the client showcasing project milestones and outcomes.', N'Not Started', '2023-03-01', '2023-03-05', NULL, NULL, 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (10, N'Security Audit', N'Conduct a security audit to identify and address potential vulnerabilities in the system.', N'Pending', '2023-03-06', '2023-03-10', '2023-03-06 10:00:00', '2023-03-10 16:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (11, N'Implement New Features', N'Add new features to enhance the functionality of the software.', N'Not Started', '2023-03-11', '2023-03-15', NULL, NULL, 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (12, N'Team Training', N'Conduct training sessions for the team on new technologies and best practices.', N'Pending', '2023-03-16', '2023-03-20', '2023-03-16 13:00:00', '2023-03-20 16:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (13, N'Documentation Review', N'Review and update project documentation based on feedback and changes.', N'In Progress', '2023-03-21', '2023-03-25', '2023-03-21 09:00:00', '2023-03-25 12:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (14, N'Performance Testing', N'Conduct performance testing to ensure the software can handle expected loads.', N'Not Started', '2023-03-26', '2023-03-31', NULL, NULL, 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (15, N'Client Feedback Session', N'Schedule a session to gather and address client feedback on the project.', N'Pending', '2023-04-01', '2023-04-05', '2023-04-01 14:00:00', '2023-04-05 17:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (16, N'Deployment Planning', N'Plan and coordinate the deployment of the software to the production environment.', N'Not Started', '2023-04-06', '2023-04-10', NULL, NULL, 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (17, N'Final Code Review', N'Conduct a final code review to ensure code quality and adherence to coding standards.', N'In Progress', '2023-04-11', '2023-04-15', '2023-04-11 11:00:00', '2023-04-15 14:00:00', 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (18, N'Prepare Release Notes', N'Create detailed release notes outlining the changes and updates in the new release.', N'Pending', '2023-04-16', '2023-04-20', '2023-04-16 09:00:00', '2023-04-20 12:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (19, N'User Training', N'Organize and conduct training sessions for end-users on how to use the new features.', N'Not Started', '2023-04-21', '2023-04-25', NULL, NULL, 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (20, N'Project Closure', N'Complete all remaining tasks and officially close the project.', N'Pending', '2023-04-26', '2023-04-30', '2023-04-26 15:00:00', '2023-04-30 18:00:00', 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (21, N'Database Backup', N'Schedule and perform regular backups of the project database.', N'Not Started', '2023-05-01', '2023-05-05', NULL, NULL, 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (22, N'Sprint Planning', N'Plan and prioritize tasks for the upcoming sprint.', N'Pending', '2023-05-06', '2023-05-10', '2023-05-06 10:00:00', '2023-05-10 12:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (23, N'Code Review Session', N'Conduct a team code review session to ensure code quality.', N'In Progress', '2023-05-11', '2023-05-15', '2023-05-11 14:00:00', '2023-05-15 17:00:00', 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (24, N'Client Demo', N'Demonstrate the project progress to the client for feedback.', N'Pending', '2023-05-16', '2023-05-20', '2023-05-16 15:00:00', '2023-05-20 18:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (25, N'Quality Assurance Testing', N'Perform thorough testing to ensure the software meets quality standards.', N'Not Started', '2023-05-21', '2023-05-25', NULL, NULL, 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (26, N'Design Mockup Creation', N'Create design mockups for new features and enhancements.', N'In Progress', '2023-05-26', '2023-05-31', '2023-05-26 11:00:00', '2023-05-31 14:00:00', 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (27, N'Security Patch Installation', N'Install the latest security patches and updates for the project.', N'Pending', '2023-06-01', '2023-06-05', '2023-06-01 09:00:00', '2023-06-05 12:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (28, N'Team Building Event', N'Organize a team-building event for improved collaboration and morale.', N'Not Started', '2023-06-06', '2023-06-10', NULL, NULL, 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (29, N'Feature Documentation', N'Document the details and usage of new features for internal and external reference.', N'In Progress', '2023-06-11', '2023-06-15', '2023-06-11 14:00:00', '2023-06-15 17:00:00', 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (30, N'Meeting with Stakeholders', N'Hold a meeting with project stakeholders to discuss project progress and future plans.', N'Pending', '2023-06-16', '2023-06-20', '2023-06-16 15:00:00', '2023-06-20 18:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (31, N'Code Documentation', N'Document codebase for improved understanding and future maintenance.', N'Not Started', '2023-06-21', '2023-06-25', NULL, NULL, 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (32, N'Client Training Session', N'Conduct a training session for the client to understand and use the system.', N'In Progress', '2023-06-26', '2023-06-30', '2023-06-26 10:00:00', '2023-06-30 12:00:00', 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (33, N'Performance Monitoring Setup', N'Set up monitoring tools to track and analyze system performance.', N'Pending', '2023-07-01', '2023-07-05', '2023-07-01 09:00:00', '2023-07-05 12:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (34, N'Sprint Retrospective', N'Conduct a retrospective meeting to review the past sprint and discuss improvements.', N'Not Started', '2023-07-06', '2023-07-10', NULL, NULL, 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (35, N'Code Unit Testing', N'Perform unit testing on individual code units for quality assurance.', N'In Progress', '2023-07-11', '2023-07-15', '2023-07-11 14:00:00', '2023-07-15 17:00:00', 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (36, N'Documentation Cleanup', N'Clean up and organize project documentation for better accessibility.', N'Pending', '2023-07-16', '2023-07-20', '2023-07-16 15:00:00', '2023-07-20 18:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (37, N'Client Support Training', N'Provide training to the client support team on handling user queries and issues.', N'Not Started', '2023-07-21', '2023-07-25', NULL, NULL, 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (38, N'Security Audit Review', N'Review the results of the recent security audit and address any identified issues.', N'In Progress', '2023-07-26', '2023-07-31', '2023-07-26 10:00:00', '2023-07-31 12:00:00', 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (39, N'Prepare Project Presentation', N'Create a presentation summarizing the project for an upcoming conference.', N'Pending', '2023-08-01', '2023-08-05', '2023-08-01 09:00:00', '2023-08-05 12:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (40, N'Project Evaluation', N'Evaluate the overall success and impact of the completed project.', N'Not Started', '2023-08-06', '2023-08-10', NULL, NULL, 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (41, N'Mobile App Development', N'Develop a mobile application for additional platform support.', N'Not Started', '2023-08-11', '2023-08-15', NULL, NULL, 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (42, N'User Interface Enhancement', N'Enhance the user interface based on user feedback and modern design trends.', N'In Progress', '2023-08-16', '2023-08-20', '2023-08-16 14:00:00', '2023-08-20 17:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (43, N'Implement Data Encryption', N'Integrate data encryption measures to enhance system security.', N'Pending', '2023-08-21', '2023-08-25', '2023-08-21 10:00:00', '2023-08-25 12:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (44, N'Database Schema Optimization', N'Optimize the database schema for improved performance and efficiency.', N'Not Started', '2023-08-26', '2023-08-31', NULL, NULL, 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (45, N'User Feedback Analysis', N'Analyze user feedback and implement improvements based on user suggestions.', N'In Progress', '2023-09-01', '2023-09-05', '2023-09-01 11:00:00', '2023-09-05 14:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (46, N'Cross-Browser Testing', N'Conduct testing to ensure compatibility with various web browsers.', N'Pending', '2023-09-06', '2023-09-10', '2023-09-06 09:00:00', '2023-09-10 12:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (47, N'Code Review Marathon', N'Organize an extensive code review session to enhance code quality.', N'Not Started', '2023-09-11', '2023-09-15', NULL, NULL, 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (48, N'Integration Testing', N'Perform testing to ensure seamless integration with external systems.', N'In Progress', '2023-09-16', '2023-09-20', '2023-09-16 14:00:00', '2023-09-20 17:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (49, N'Accessibility Testing', N'Conduct testing to ensure the software is accessible to users with disabilities.', N'Pending', '2023-09-21', '2023-09-25', '2023-09-21 10:00:00', '2023-09-25 12:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (50, N'Documentation Translation', N'Translate project documentation into multiple languages for wider accessibility.', N'Not Started', '2023-09-26', '2023-09-30', NULL, NULL, 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (51, N'Sprint Kickoff', N'Initiate the next sprint by conducting a kickoff meeting with the team.', N'In Progress', '2023-10-01', '2023-10-05', '2023-10-01 11:00:00', '2023-10-05 14:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (52, N'Code Documentation Review', N'Review and update code documentation for accuracy and completeness.', N'Pending', '2023-10-06', '2023-10-10', '2023-10-06 09:00:00', '2023-10-10 12:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (53, N'System Performance Analysis', N'Analyze and optimize system performance for better efficiency.', N'Not Started', '2023-10-11', '2023-10-15', NULL, NULL, 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (54, N'Client Meeting for Requirements Gathering', N'Conduct a meeting with the client to gather requirements for upcoming features.', N'In Progress', '2023-10-16', '2023-10-20', '2023-10-16 14:00:00', '2023-10-20 17:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (55, N'Maintenance and Bug Fixing', N'Address and fix reported bugs for ongoing maintenance.', N'Pending', '2023-10-21', '2023-10-25', '2023-10-21 10:00:00', '2023-10-25 12:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (56, N'User Training Webinar', N'Host a webinar to provide user training for new features and updates.', N'Not Started', '2023-10-26', '2023-10-30', NULL, NULL, 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (57, N'Security Vulnerability Assessment', N'Conduct an assessment to identify and address potential security vulnerabilities.', N'In Progress', '2023-10-31', '2023-11-04', '2023-10-31 11:00:00', '2023-11-04 14:00:00', 2);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (58, N'UI/UX Workshop', N'Organize a workshop to gather feedback and suggestions for improving UI/UX.', N'Pending', '2023-11-05', '2023-11-09', '2023-11-05 09:00:00', '2023-11-09 12:00:00', 1);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (59, N'Data Backup and Recovery Testing', N'Conduct testing to ensure effective data backup and recovery processes.', N'Not Started', '2023-11-10', '2023-11-14', NULL, NULL, 3);

INSERT INTO Task (task_id, title, description_task, status, start_date, end_date, start_time, end_time, task_priority)
VALUES (60, N'Project Progress Presentation', N'Prepare and deliver a presentation on the overall progress of the project.', N'In Progress', '2023-11-15', '2023-11-19', '2023-11-15 14:00:00', '2023-11-19 17:00:00', 2);

-----------------------
-- Task_Relationship --
-----------------------
select * from Task_Relationship;
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (1, 1, 2);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (2, 2, 3);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (3, 3, 4);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (4, 4, 5);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (5, 3, 5);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (6, 5, 6);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (7, 6, 7);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (8, 7, 8);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (9, 8, 9);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (10, 9, 10);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (11, 10, 11);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (12, 11, 12);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (13, 12, 13);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (14, 13, 14);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (15, 14, 15);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (16, 15, 16);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (17, 16, 17);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (18, 17, 18);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (19, 18, 19);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (20, 19, 20);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (21, 20, 21);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (22, 21, 22);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (23, 22, 23);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (24, 23, 24);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (25, 24, 25);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (26, 25, 26);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (27, 26, 27);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (28, 27, 28);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (29, 28, 29);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (30, 29, 30);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (31, 30, 31);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (32, 31, 32);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (33, 32, 33);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (34, 33, 34);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (35, 34, 35);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (36, 35, 36);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (37, 36, 37);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (38, 37, 38);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (39, 38, 39);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (40, 39, 40);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (41, 40, 41);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (42, 41, 42);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (43, 42, 43);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (44, 43, 44);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (45, 44, 45);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (46, 45, 46);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (47, 46, 47);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (48, 47, 48);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (49, 48, 49);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (50, 49, 50);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (51, 50, 51);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (52, 51, 52);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (53, 52, 53);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (54, 53, 54);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (55, 54, 55);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (56, 55, 56);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (57, 56, 57);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (58, 57, 58);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (59, 58, 59);
INSERT INTO Task_Relationship (relationship_id, parent_id, child_id) VALUES (60, 59, 60);

-----------------
-- Task_Report --
-----------------
select * from Task_Report;
INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (1, N'Project Proposal Summary', N'Summary report on the completed project proposal.', '2023-01-20', '2023-01-20 15:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (2, N'Design Approval Meeting Notes', N'Detailed notes from the meeting discussing and approving design concepts.', '2023-01-25', '2023-01-25 17:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (3, N'Code Refactoring Progress Update', N'Report on the progress of the ongoing code refactoring tasks.', '2023-01-31', '2023-01-31 12:15:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (4, N'User Acceptance Testing Results', N'Report detailing the results of the user acceptance testing phase.', '2023-02-05', '2023-02-05 18:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (5, N'Debugging and Issue Resolution Log', N'Log of identified bugs and resolutions during the debugging phase.', '2023-02-10', '2023-02-10 14:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (6, N'Client Meeting Summary', N'Summary report on the client meeting discussing project progress.', '2023-02-15', '2023-02-15 17:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (7, N'Database Optimization Report', N'Report outlining the database optimization tasks and outcomes.', '2023-02-20', '2023-02-20 13:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (8, N'Project Documentation Draft', N'Draft of the project documentation for internal review.', '2023-02-28', '2023-02-28 14:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (9, N'Client Presentation Preparation Notes', N'Notes on preparing for the upcoming client presentation.', '2023-03-05', '2023-03-05 11:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (10, N'Security Audit Report', N'Detailed report on the findings of the security audit conducted.', '2023-03-10', '2023-03-10 16:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (11, N'New Features Implementation Progress', N'Report on the progress of implementing new features.', '2023-03-15', '2023-03-15 12:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (12, N'Team Training Session Report', N'Report summarizing the team training session on new technologies.', '2023-03-20', '2023-03-20 16:15:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (13, N'Documentation Review Update', N'Report updating the project documentation based on reviews and changes.', '2023-03-25', '2023-03-25 12:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (14, N'Performance Testing Results', N'Report presenting the results of the performance testing phase.', '2023-03-31', '2023-03-31 14:15:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (15, N'Client Feedback Session Summary', N'Summary report on the client feedback session for project improvement.', '2023-04-05', '2023-04-05 17:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (16, N'Deployment Planning Report', N'Report detailing the plans and coordination for the software deployment.', '2023-04-10', '2023-04-10 15:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (17, N'Final Code Review Summary', N'Summary report on the final code review for quality assurance.', '2023-04-15', '2023-04-15 14:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (18, N'Release Notes Draft', N'Draft of the detailed release notes for the upcoming software release.', '2023-04-20', '2023-04-20 12:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (19, N'User Training Preparation Notes', N'Notes on preparing for the user training sessions on new features.', '2023-04-25', '2023-04-25 11:15:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (20, N'Project Closure Report', N'Report summarizing the completion and closure of the project tasks.', '2023-04-30', '2023-04-30 18:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (21, N'Quality Assurance Audit Results', N'Results of the quality assurance audit conducted for the project.', '2023-05-05', '2023-05-05 14:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (22, N'Collaboration Meeting Minutes', N'Minutes from the collaboration meeting with stakeholders.', '2023-05-10', '2023-05-10 16:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (23, N'Bug Fixing Progress Report', N'Report outlining the progress in fixing identified bugs and issues.', '2023-05-15', '2023-05-15 13:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (24, N'Resource Allocation Update', N'Report updating resource allocation for the remaining project tasks.', '2023-05-20', '2023-05-20 12:15:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (25, N'Milestone Achievement Report', N'Report highlighting the achievement of project milestones.', '2023-05-25', '2023-05-25 17:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (26, N'Client Satisfaction Survey Results', N'Summary of results from the client satisfaction survey conducted.', '2023-05-31', '2023-05-31 15:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (27, N'Sprint Review and Planning Report', N'Report covering the review of completed sprints and planning for the next sprint.', '2023-06-05', '2023-06-05 11:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (28, N'Remote Team Collaboration Notes', N'Notes summarizing collaboration efforts among remote team members.', '2023-06-10', '2023-06-10 14:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (29, N'Data Backup and Recovery Plan', N'Draft report outlining the plan for data backup and recovery.', '2023-06-15', '2023-06-15 13:15:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (30, N'Code Review Meeting Minutes', N'Minutes from the meeting discussing the outcomes of the code review.', '2023-06-20', '2023-06-20 16:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (31, N'Risk Assessment Update', N'Update on the risk assessment for the project and mitigation strategies.', '2023-06-25', '2023-06-25 12:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (32, N'Accessibility Testing Results', N'Report presenting the results of accessibility testing for the software.', '2023-06-30', '2023-06-30 17:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (33, N'Client Demo Preparation Notes', N'Notes on preparing for the upcoming client demonstration of the software.', '2023-07-05', '2023-07-05 14:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (34, N'Project Budget Update', N'Report updating the project budget based on current expenditures.', '2023-07-10', '2023-07-10 11:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (35, N'Knowledge Transfer Session Summary', N'Summary report on the knowledge transfer session among team members.', '2023-07-15', '2023-07-15 15:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (36, N'Client Support Plan Draft', N'Draft of the client support plan for the software post-deployment.', '2023-07-20', '2023-07-20 13:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (37, N'Team Productivity Analysis', N'Report analyzing the productivity of the development team.', '2023-07-25', '2023-07-25 12:15:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (38, N'Infrastructure Upgrade Plan', N'Draft report outlining the plan for upgrading project infrastructure.', '2023-07-31', '2023-07-31 17:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (39, N'Project Timeline Adjustment Notes', N'Notes on adjustments made to the project timeline and reasons.', '2023-08-05', '2023-08-05 15:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (40, N'Final Project Summary', N'Comprehensive summary report of the entire project lifecycle and outcomes.', '2023-08-10', '2023-08-10 11:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (41, N'User Acceptance Testing Results', N'Results and findings from the user acceptance testing phase.', '2023-08-15', '2023-08-15 14:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (42, N'Project Documentation Review Notes', N'Notes from the review of project documentation for accuracy and completeness.', '2023-08-20', '2023-08-20 16:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (43, N'Team Training Progress Report', N'Report on the progress of training sessions for team members.', '2023-08-25', '2023-08-25 13:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (44, N'Code Refactoring Analysis', N'Report analyzing the impact and benefits of recent code refactoring efforts.', '2023-08-30', '2023-08-30 12:15:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (45, N'Data Security Audit Results', N'Summary of results from the data security audit conducted on the project.', '2023-09-05', '2023-09-05 17:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (46, N'Project Evaluation Metrics Update', N'Update on the metrics used to evaluate the success of the project.', '2023-09-10', '2023-09-10 14:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (47, N'Release Notes Draft', N'Draft of the release notes for the upcoming software release.', '2023-09-15', '2023-09-15 13:15:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (48, N'Sprint Retrospective Summary', N'Summary of the sprint retrospective meeting and identified improvements.', '2023-09-20', '2023-09-20 16:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (49, N'Communication Plan Review Notes', N'Notes from the review of the project communication plan and suggested revisions.', '2023-09-25', '2023-09-25 12:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (50, N'Adoption Strategy Outline', N'Outline of the strategy for user adoption of the software upon release.', '2023-09-30', '2023-09-30 17:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (51, N'Project Closure Checklist', N'Checklist of tasks and activities for the closure of the project.', '2023-10-05', '2023-10-05 14:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (52, N'Technical Debt Analysis Report', N'Report analyzing the technical debt accumulated during the project and proposed solutions.', '2023-10-10', '2023-10-10 11:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (53, N'Stakeholder Feedback Compilation', N'Compilation of feedback received from various project stakeholders.', '2023-10-15', '2023-10-15 15:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (54, N'Requirements Traceability Matrix Update', N'Update on the requirements traceability matrix to ensure alignment with project goals.', '2023-10-20', '2023-10-20 13:45:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (55, N'Product Release Readiness Report', N'Report assessing the readiness of the product for release to end-users.', '2023-10-25', '2023-10-25 12:15:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (56, N'Project Health Check Summary', N'Summary of the project health check, including areas of improvement.', '2023-10-31', '2023-10-31 17:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (57, N'Deployment Plan Draft', N'Draft of the plan for deploying the software to production.', '2023-11-05', '2023-11-05 15:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (58, N'Lessons Learned Session Notes', N'Notes from the session discussing lessons learned throughout the project.', '2023-11-10', '2023-11-10 11:30:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (59, N'User Interface Design Evaluation', N'Evaluation report on the user interface design and proposed enhancements.', '2023-11-15', '2023-11-15 14:00:00');

INSERT INTO Task_Report (report_id, title, report_content, report_date, report_time)
VALUES (60, N'Project Status Presentation Slides', N'Finalized slides for presenting the overall project status to stakeholders.', '2023-11-20', '2023-11-20 16:30:00');

--------------
-- Task_Set --
--------------
select * from Task_Set;
INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (1, 1, 1, 41, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (2, 2, 2, 42, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (3, 3, 3, 43, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (4, 4, 4, 44, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (5, 5, 5, 45, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (6, 6, 6, 46, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (7, 7, 7, 47, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (8, 8, 8, 48, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (9, 9, 9, 49, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (10, 10, 10, 50, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (11, 11, 11, 51, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (12, 12, 12, 52, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (13, 13, 13, 53, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (14, 14, 14, 54, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (15, 15, 15, 55, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (16, 16, 16, 56, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (17, 17, 17, 57, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (18, 18, 18, 58, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (19, 19, 19, 59, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (20, 20, 20, 60, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (21, 21, 21, 1, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (22, 22, 22, 2, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (23, 23, 23, 3, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (24, 24, 24, 4, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (25, 25, 25, 5, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (26, 26, 26, 6, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (27, 27, 27, 7, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (28, 28, 28, 8, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (29, 29, 29, 9, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (30, 30, 30, 10, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (31, 31, 31, 11, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (32, 32, 32, 12, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (33, 33, 33, 13, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (34, 34, 34, 14, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (35, 35, 35, 15, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (36, 36, 36, 16, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (37, 37, 37, 17, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (38, 38, 38, 18, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (39, 39, 39, 19, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (40, 40, 40, 20, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (41, 41, 41, 21, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (42, 42, 42, 22, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (43, 43, 43, 23, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (44, 44, 44, 24, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (45, 45, 45, 25, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (46, 46, 46, 26, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (47, 47, 47, 27, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (48, 48, 48, 28, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (49, 49, 49, 29, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (50, 50, 50, 30, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (51, 51, 51, 31, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (52, 52, 52, 32, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (53, 53, 53, 33, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (54, 54, 54, 34, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (55, 55, 55, 35, 1);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (56, 56, 56, 36, 2);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (57, 57, 57, 37, 3);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (58, 58, 58, 38, 4);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (59, 59, 59, 39, 5);

INSERT INTO Task_Set (set_id, employee_id, task_id, report_id, count)
VALUES (60, 60, 60, 40, 1);




-- Задача 22
UPDATE Task SET status = N'Completed' WHERE task_id = 22;

-- Задача 23
UPDATE Task SET status = N'Completed' WHERE task_id = 23;

-- Задача 24
UPDATE Task SET status = N'Completed' WHERE task_id = 24;

-- Задача 25
UPDATE Task SET status = N'Completed' WHERE task_id = 25;

-- Задача 26
UPDATE Task SET status = N'Completed' WHERE task_id = 26;

-- Задача 27
UPDATE Task SET status = N'Completed' WHERE task_id = 27;

-- Задача 28
UPDATE Task SET status = N'Completed' WHERE task_id = 28;

-- Задача 29
UPDATE Task SET status = N'Completed' WHERE task_id = 29;

-- Задача 30
UPDATE Task SET status = N'Completed' WHERE task_id = 30;

-- Задача 31
UPDATE Task SET status = N'Completed' WHERE task_id = 31;

-- Задача 32
UPDATE Task SET status = N'Completed' WHERE task_id = 32;

-- Задача 33
UPDATE Task SET status = N'Completed' WHERE task_id = 33;

-- Задача 34
UPDATE Task SET status = 'Completed' WHERE task_id = 34;

-- Задача 35
UPDATE Task SET status = 'Completed' WHERE task_id = 35;

-- Задача 36
UPDATE Task SET status = 'Completed' WHERE task_id = 36;

-- Задача 37
UPDATE Task SET status = 'Completed' WHERE task_id = 37;

-- Задача 38
UPDATE Task SET status = 'Completed' WHERE task_id = 38;

-- Задача 39
UPDATE Task SET status = 'Completed' WHERE task_id = 39;

-- Задача 40
UPDATE Task SET status = 'Completed' WHERE task_id = 40;

-- Задача 41
UPDATE Task SET status = 'Completed' WHERE task_id = 41;

-- Задача 42
UPDATE Task SET status = 'Completed' WHERE task_id = 42;

-- Задача 43
UPDATE Task SET status = 'Completed' WHERE task_id = 43;

-- Задача 44
UPDATE Task SET status = 'Completed' WHERE task_id = 44;

-- Задача 45
UPDATE Task SET status = 'Completed' WHERE task_id = 45;

-- Задача 46
UPDATE Task SET status = 'Completed' WHERE task_id = 46;

-- Задача 47
UPDATE Task SET status = 'Completed' WHERE task_id = 47;

-- Задача 48
UPDATE Task SET status = 'Completed' WHERE task_id = 48;

-- Задача 49
UPDATE Task SET status = 'Completed' WHERE task_id = 49;

-- Задача 50
UPDATE Task SET status = 'Completed' WHERE task_id = 50;

-- Задача 51
UPDATE Task SET status = 'Completed' WHERE task_id = 51;

-- Задача 52
UPDATE Task SET status = 'Completed' WHERE task_id = 52;
