-- 14) consulta capaz de exibir somente o name, lastname e email dos clientes que moram no estado de SP
SELECT NAME, LASTNAME, EMAIL FROM CUSTOMERS WHERE STATE = 'SP';

-- 15) consulta capaz de exibir somente os automóveis que estão com o status “Liberado”
SELECT * FROM CARS WHERE STATUS = 'Liberado';

-- 16) consulta capaz de exibir todos os automóveis do ano 2016.
SELECT * FROM CARS WHERE YEAR = 2016;

-- 17) consulta capaz de exibir todos os funcionários e seus respectivos cargos
SELECT E.NAME, E.PHONE_NUMBER, E.CONTRACT_DATE, P.DESCRIPTION FROM EMPLOYEES AS E
INNER JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID);

-- 18) consulta capaz de exibir somente os funcionários que realizaram mais ou igual a 2 locações.
SELECT  E.NAME AS 'VENDEDOR' FROM LOCATIONS AS L
    INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID)
    WHERE L.EMPLOYEE_ID = 2 OR L.EMPLOYEE_ID = 5 OR L.EMPLOYEE_ID = 6;

-- 19) consulta capaz de exibir somente os clientes que realizaram mais ou igual a 2 locações.
SELECT  C.NAME AS 'CLIENTE' FROM LOCATIONS AS L
    INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
    WHERE L.CUSTOMER_ID = 1;

-- 20) consulta capaz de exibir todas as locações realizadas, assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação
SELECT  L.START_DATE, 
        L.END_DATE, 
        L.TOTAL, 
        C.NAME AS 'CLIENTE', 
        R.NAME AS 'AUTOMÓVEL', 
        E.NAME AS 'VENDEDOR' FROM LOCATIONS AS L
    INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
    INNER JOIN CARS AS R ON (L.CAR_ID = R.ID)
    INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID);

-- 21) consulta capaz de exibir quantas locações existem na tabela de LOCATIONS
SELECT COUNT(ID) AS 'Qnt de Locações' FROM LOCATIONS;

-- 22) consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.
SELECT MAX(TOTAL) AS 'MAIOR VALOR' FROM LOCATIONS;

-- 23) consulta capaz de exibir todas as locações realizadas, entre as datas “2022-05-20” a “2022-12-25”
SELECT  L.START_DATE, 
        L.END_DATE, 
        L.TOTAL, 
        C.NAME AS 'CLIENTE', 
        R.NAME AS 'AUTOMÓVEL', 
        E.NAME AS 'VENDEDOR' FROM LOCATIONS AS L
    INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
    INNER JOIN CARS AS R ON (L.CAR_ID = R.ID)
    INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID)
    WHERE L.START_DATE BETWEEN '2022-05-20' AND '2022-12-25';

