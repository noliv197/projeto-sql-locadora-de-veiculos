-- 04) criar a tabela CAR_BRAND (marcas) no banco de dados

CREATE TABLE CAR_BRANDS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    BRAND_NAME VARCHAR(32) NOT NULL
);

INSERT INTO CAR_BRANDS (BRAND_NAME)
    VALUES  ('Chevrolet'),
            ('Toyota'),
            ('Hyundai'),
            ('Volkswagen'),
            ('Jeep'),
            ('Renault'),
            ('Honda'),
            ('Fiat');

SELECT * FROM CAR_BRANDS;