INSERT INTO CUSTOMERS (NAME, LASTNAME, PHONE, EMAIL, ADDRESS, CITY, STATE, BIRTH_DATE)
VALUES
('Roberto', 'Silva', '(11)964', 'roberto@gmail.com', 'Rua José, 32', 'São Roque', 'SP', '1987-04-25'),
('MARIA', 'Gomes', '(11)974', 'maria@yahoo.com', 'Rua das Flores, 44', 'São Paulo', 'SP', '1988-03-24'),
('Renata', 'Antunes', '(11)974', 'renata@hotmail.com', 'Rua dos Antunes, 55', 'Sorocaba', 'SP', '1970-05-01'),
('Josefa', 'Duarte', '(11)973', 'josefa20@gmail.com', 'Rua dos Flocos, 387', 'Mairinque', 'SP', '1988-06-18'),
('André', 'Linares', '(11)975', 'andre.lin@gmail.com', 'Rua Palmeiras, 3', 'Rio de Janeiro', 'RJ', '2000-11-04'),
('Mário', 'Santana', '(11)974', 'mario@gmail.com', 'Rua das Rosas, 8', 'Salvador', 'BA', '1999-12-15'),
('Luis', 'Duarte', '(11)987', 'luis@hotmail.com', 'Rua das Orquidias, 18', 'Fortaleza', 'CE', '1985-07-06'),
('Dalva', 'Malheiros', '(11)966', 'dalva@gmail.com', 'Rua das Nogueiras, 12', 'São Paulo', 'SP', '1956-08-03'),
('Carolina', 'Medeiros', '(11)935', 'carol@ig.com.br', 'Rua dos Jatobás, 1', 'Cajamar', 'SP', '1974-08-21'),
('Marcos', 'Rodrigues', '(11)972', 'marcos@uol.com.br', 'Rua das Amazonas, 89', 'Recife', 'PE', '1966-05-25');


INSERT INTO CAR_MODELS (MODEL_NAME)
    VALUES ('Conversível'), ('Sedã'), ('Hatch'), ('Coupé'), ('Perua'),
           ('SUV'), ('Picape'), ('Minivan'), ('Utilitário'), ('Buggy');

INSERT INTO CAR_BRANDS (BRAND_NAME)
    VALUES ('Chevrolet'), ('Toyota'), ('Hyundai'), ('Volkswagen'),
           ('Jeep'), ('Renault'), ('Honda'), ('Fiat');



INSERT INTO POSITIONS (DESCRIPTION) VALUES
   ('Gerente de vendas'), ('Gerente de compras'), 
   ('Vendedor'), ('Mecânico'), ('Assistente Administrativo');

INSERT INTO EMPLOYEES (NAME , PHONE, CONTRACT_DATE, POSITION_ID)
   VALUES
  ('Adriana Lemes',  '(11) 98789-9999', '10/04/2021', 1),
  ('Camila Soares ',  '(11) 92749-9599', '25/03/2008', 3),
  ('Leonardo Silva',  '(11) 91449-9600', '26/08/2018', 5),
  ('Mayara Gome' ,  '(11) 92649-9601', '18/07/2016', 2),
  ('Matheus Alves',  '(11) 92749-9602', '04/03/2015', 5),
  ('Aline Santos',  '(11) 99789-3135', '06/05/202', 3);   



INSERT INTO CARS (NAME, YEAR, COLOR, KM, STATUS, BRAND_ID, MODEL_ID)
  VALUES
  ('Chevrolet Onix LT',  2016,  'Preto', 8000,  'Liberado',  1, 3),
  ('Hyundai HB20 1.6', 2022, 'Prata',  3000,  'Em manutenção', 3,  3),
  ('Toyota Yaris',  2021, 'Branca', 10000,  'Liberado',  2,  3),
  ('Fiat Cronos',  2022, 'Preto', 2500,  'Liberado',  8,  2),
  ('Honda HR-V',  2018, 'Prata',  40000,  'Em manutenção',  7,  6),
  ('VW Amarok',  2019, 'Prata',  25000,  'Liberado',  4, 6);

INSERT INTO LOCATIONS (START_DATE, END_DATE, TOTAL,
                       CUSTOMER_ID,  CAR_ID,  EMPLOYEE_ID)
    VALUES
    ('2021-04-01', '2021-04-07',  1500, 1, 1, 2),
    ('2022-05-20', '2022-05-30',  1800, 2, 1, 5),
    ('2021-03-10', '2021-03-21',  2500, 5, 6, 5),
    ('2018-02-20', '2018-03-05',  1250, 6, 4, 6),
    ('2022-11-20', '2022-11-29',  900,  1, 3, 2),
    ('2019-10-01', '2019-10-29',  2800, 3, 1, 6);  