SELECT * 
FROM bsg-project-492522.bsg_project_dw.customers;

SELECT COUNT(*) AS total_registros
FROM bsg-project-492522.bsg_project_dw.customers;

SELECT city, COUNT(*) AS total_clientes
FROM bsg-project-492522.bsg_project_dw.customers
GROUP BY city;