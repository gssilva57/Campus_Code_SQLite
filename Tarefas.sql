-- 9 - Construa uma query SQL para editar o campo e-mail do cliente com nome Carolina,
--     onde devemos trocar de “carol@ig.com.br” para “carolina@campuscode.com.br”.

UPDATE CUSTOMERS SET EMAIL = 'carolina@campuscode.com.br' WHERE NAME ='Carolina';


-- 10 - Construa uma query SQL para editar a data de nascimento do cliente
--      com nome Josefa para “1986-06-19”.

UPDATE CUSTOMERS SET BIRTH_DATE = '1986-06-19' WHERE NAME ='Josefa';

-- 11 - Construa uma query SQL para editar o ano do automóvel com nome Fiat Cronos de
--      “2022” para “2019” da tabela de CARS

UPDATE CARS SET YEAR = 2019 WHERE NAME="Fiat Cronos";


-- 12 - Construa uma query SQL para excluir o automóvel com nome Hyundai HB20 1.6
--      da tabela de CARS

DELETE FROM CARS WHERE NAME = "Hyundai HB20 1.6";

-- 13- Construa uma query SQL para alterar o nome da coluna “PHONE” da tabela de
--     EMPLOYEES, para “PHONE NUMBER”

ALTER TABLE EMPLOYEES RENAME PHONE TO "PHONE NUMBER";

-- 14 - Construa uma consulta capaz de exibir somente o name, lastname e email dos
--      clientes que moram no estado de SP

SELECT NAME, LASTNAME, EMAIL FROM CUSTOMERS WHERE STATE = 'SP';

-- 15 - Construa uma consulta capaz de exibir somente os automóveis que estão com
--      o status “Liberado”

SELECT * FROM CARS WHERE STATUS = 'Liberado';

-- 16 - Construa uma consulta capaz de exibir todos os automóveis do ano 2016.

SELECT * FROM CARS WHERE YEAR = 2016;

-- 17 - Construa uma consulta capaz de exibir todos os funcionários e seus respectivos cargos

SELECT E.ID 'Cod.', E.NAME 'Nome', E."PHONE NUMBER" 'fone',
       E.CONTRACT_DATE 'Contrato', P.DESCRIPTION 'Cargo'
   FROM EMPLOYEES E JOIN POSITIONS P ON E.POSITION_ID = P.ID;

-- 18 - Construa uma consulta capaz de exibir somente os funcionários que realizaram mais ou 
--      igual a 2 locações.

SELECT * FROM EMPLOYEES WHERE ID IN (
    SELECT EMPLOYEE_ID FROM  LOCATIONS
       GROUP BY EMPLOYEE_ID
       HAVING COUNT(EMPLOYEE_ID) > 1
);


-- 19 - Construa uma consulta capaz de exibir somente os clientes que realizaram mais ou igual a 2 locações.

SELECT * FROM CUSTOMERS WHERE ID IN (
    SELECT CUSTOMER_ID FROM  LOCATIONS
       GROUP BY CUSTOMER_ID
       HAVING COUNT(CUSTOMER_ID) > 1
);


-- 20 - Construa uma consulta capaz de exibir todas as locações realizadas, assim como também
--      o nome do cliente, do automóvel e do funcionário vinculados em cada locação


SELECT L.ID "Cód.",
       STRFTIME('%d/%m/%Y', L.START_DATE) "Início", 
       STRFTIME('%d/%m/%Y', L.END_DATE) "Fim",
       printf("%.2f", L.TOTAL) "Total",
       C.NAME || " " || C.LASTNAME "Cliente",
       E.NAME "Funcionário",
       CR.NAME "Automóvel"

   FROM LOCATIONS L
       JOIN CUSTOMERS C ON L.CUSTOMER_ID = C.ID
       JOIN EMPLOYEES E ON L.EMPLOYEE_ID = E.ID
       JOIN CARS CR ON L.CAR_ID = CR.ID;


-- 21 - Construa uma consulta capaz de exibir quantas locações existem na tabela de LOCATIONS

SELECT COUNT(ID) "Quantas locações" FROM LOCATIONS;

-- 21 - Construa uma consulta capaz de exibir qual foi a locação com o TOTAL com maior valor.

SELECT L.ID "Cód.",
       STRFTIME('%d/%m/%Y', L.START_DATE) "Início", 
       STRFTIME('%d/%m/%Y', L.END_DATE) "Fim",
       printf("%.2f", L.TOTAL) "Total",
       C.NAME || " " || C.LASTNAME "Cliente",
       E.NAME "Funcionário",
       CR.NAME "Automóvel"

   FROM LOCATIONS L
       JOIN CUSTOMERS C ON L.CUSTOMER_ID = C.ID
       JOIN EMPLOYEES E ON L.EMPLOYEE_ID = E.ID
       JOIN CARS CR ON L.CAR_ID = CR.ID

   WHERE TOTAL = (SELECT MAX (TOTAL) FROM LOCATIONS);    

-- 22 - Construa uma consulta capaz de exibir todas as locações realizadas, entre as datas
--      “2022-05-20” a “2022-12-25”

SELECT L.ID "Cód.",
       STRFTIME('%d/%m/%Y', L.START_DATE) "Início", 
       STRFTIME('%d/%m/%Y', L.END_DATE) "Fim",
       printf("%.2f", L.TOTAL) "Total",
       C.NAME || " " || C.LASTNAME "Cliente",
       E.NAME "Funcionário",
       CR.NAME "Automóvel"
   FROM LOCATIONS L
       JOIN CUSTOMERS C ON L.CUSTOMER_ID = C.ID
       JOIN EMPLOYEES E ON L.EMPLOYEE_ID = E.ID
       JOIN CARS CR ON L.CAR_ID = CR.ID
   WHERE L.START_DATE BETWEEN "2022-05-20" AND "2022-12-25";
