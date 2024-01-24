
--1
SELECT 2023 AS year,EMP_ID, PRD_TYPE_ID, month, sales_amount
FROM ALL_SALES
MODEL
PARTITION BY (PRD_TYPE_ID, month)
DIMENSION BY(emp_id, year)
MEASURES(amount sales_amount)
RULES( sales_amount[FOR emp_id FROM 21 TO 22 INCREMENT 1, 2022] = sales_amount[21, 2022] * 1.1,
sales_amount[emp_id < 21, 2022] = sales_amount[cv(emp_id),2022] * 1.05,
sales_amount[emp_id > 22, 2022] = sales_amount[cv(emp_id),2022] * 1.05)
ORDER BY emp_id,prd_type_id, month ASC;
--      

--2
SELECT 2023 AS year,EMP_ID, PRD_TYPE_ID, month, amount
FROM ALL_SALES
MODEL
PARTITION BY (PRD_TYPE_ID, EMP_ID)
DIMENSION BY (MONTH, YEAR)
MEASURES (AMOUNT)
RULES (
AMOUNT[FOR MONTH FROM 1 TO 3 INCREMENT 1, 2022] = AVG(AMOUNT)[CV(), 2022], 
AMOUNT[FOR MONTH FROM 4 TO 12 INCREMENT 1, 2022] = AVG(AMOUNT)[MONTH BETWEEN (CV() - 3) AND (CV() - 1), 2022]
)
ORDER BY YEAR DESC, EMP_ID, PRD_TYPE_ID, MONTH;
--

select * from all_sales
where emp_id = 26 and prd_type_id = 1;


--3
SELECT EMP_ID, PRD_TYPE_ID, year, month, sales_amount
FROM ALL_SALES
MODEL
PARTITION BY(PRD_TYPE_ID)
DIMENSION BY (EMP_ID, MONTH, YEAR)
MEASURES(AMOUNT sales_amount)
RULES (sales_amount[FOR EMP_ID FROM 21 TO 26 INCREMENT 1, FOR MONTH FROM 1 TO 12 INCREMENT 1, 2023]
= (MAX(sales_amount)[EMP_ID BETWEEN 21 AND 26, cv(), 2022] - sales_amount[cv(),cv(), 2022])/2 + sales_amount[cv(),cv(), 2022]
)
ORDER BY YEAR ASC, MONTH, EMP_ID, PRD_TYPE_ID;