SELECT CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) `Nome completo`,
DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') `Data de início`,
DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') `Data de rescisão`,
ROUND((DATEDIFF(jh.END_DATE, jh.START_DATE)/365), 2) `Anos trabalhados`
FROM hr.employees em
INNER JOIN hr.job_history jh ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
