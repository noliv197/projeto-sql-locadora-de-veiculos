-- 03)  criar a tabela CAR_MODEL (modelos) no banco de dados

CREATE TABLE CAR_MODELS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    MODEL_NAME VARCHAR(120) NOT NULL
);

INSERT INTO CAR_MODELS (MODEL_NAME)
    VALUES  ('Conversível'),
            ('Sedã'),
            ('Hatch'),
            ('Coupé'),
            ('Perua'),
            ('SUV'),
            ('Picape'),
            ('Minivan'),
            ('Utilitário'),
            ('Buggy');

SELECT * FROM CAR_MODELS;