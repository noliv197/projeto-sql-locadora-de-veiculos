-- 9) editar o campo e-mail do cliente com nome Carolina, onde devemos trocar de “carol@ig.com.br” para “carolina@campuscode.com.br”
UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE NAME = 'Carolina';

-- 10) editar a data de nascimento do cliente com nome Josefa para “1986-06-19”
UPDATE CUSTOMERS SET BIRTH_DATE = '1986-06-19' WHERE NAME = 'Josefa';

-- 11) editar o ano do automóvel com nome Fiat Cronos de “2022” para “2019” da tabela de CARS
UPDATE CARS SET YEAR = 2019 WHERE NAME = 'Fiat Cronos';

-- 12) excluir o automóvel com nome Hyundai HB20 1.6 da tabela de CARS
DELETE FROM CARS WHERE NAME = 'Hyundai HB20 1.6';

-- 13) alterar o nome da coluna “PHONE” da tabela de EMPLOYEES, para “PHONE NUMBER”
ALTER TABLE EMPLOYEES RENAME PHONE TO PHONE_NUMBER;
