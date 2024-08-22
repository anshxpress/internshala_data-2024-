-- COUNT TOTAL NO. OF COMAPNY PROVIDING INTERNSHIPS

SELECT COUNT(*) FROM sql_cx_live.internshala;

-- Which company offers the most internships?

SELECT company_name, COUNT(*) AS 'num_internships' FROM sql_cx_live.internshala

GROUP BY company_name 
ORDER BY num_internships DESC;

--  What is the average stipend for internships that offer a range salary?

SELECT AVG(stipend_perMonth) AS 'avg_stipend' FROM sql_cx_live.internshala
WHERE stipend_perMonth LIKE '%-%';

-- Which location type has the most internships?

SELECT location, COUNT(*) AS 'num_internship'
FROM sql_cx_live.internshala 
GROUP BY location 
ORDER BY num_internship DESC;

-- Which role has the highest average stipend?
 
 SELECT role, AVG(stipend_perMonth) AS 'avg_stipend' FROM sql_cx_live.internshala
 GROUP BY role
 ORDER BY avg_stipend DESC;
 
 
-- try to find out max stipend list (it carry some unwanted like + revenue,  ranged salary etc)

SELECT company_name,role,stipend_perMonth FROM sql_cx_live.internshala
WHERE stipend_perMonth LIKE '%000%'
ORDER BY stipend_perMonth DESC