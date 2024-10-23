CREATE DATABASE paises_e_idiomas;
USE paises_e_idiomas;

CREATE TABLE pais(
  id SERIAL PRIMARY KEY,
  nome VARCHAR(70) NOT NULL UNIQUE,
  capital VARCHAR(70),
  continente VARCHAR(70),
  expectativa_de_vida VARCHAR(70)
);

CREATE TABLE idioma(
  id SERIAL PRIMARY KEY,
  nome VARCHAR(70) NOT NULL,
  pais_id INT NOT NULL,
  CONSTRAINT fk_pais FOREIGN KEY (pais_id) REFERENCES pais(id)
);

INSERT INTO pais(nome, capital, continente, expectativa_de_vida) VALUES
('Brasil', 'Brasília', 'América do Sul', '75 anos'),
('Estados Unidos', 'Washington, D.C.', 'América do Norte', '79 anos'),
('França', 'Paris', 'Europa', '82 anos'),
('Japão', 'Tóquio', 'Ásia', '84 anos'),
('Alemanha', 'Berlim', 'Europa', '81 anos'),
('Austrália', 'Canberra', 'Oceania', '83 anos'),
('África do Sul', 'Pretória', 'África', '65 anos');

INSERT INTO idioma(nome, pais_id) VALUES
('Português', 1),
('Inglês', 2),
('Francês', 3),
('Japonês', 4),
('Alemão', 5),
('Inglês', 6),
('Africâner', 7);

SELECT pais.id AS pais_id, pais.nome AS pais_nome, capital, continente, expectativa_de_vida, idioma.nome AS idioma_nome, pais.id AS idioma_pais_id FROM pais
INNER JOIN idioma
ON pais.id = idioma.pais_id;

SELECT pais.nome AS pais_nome, expectativa_de_vida, idioma.nome AS idioma_nome FROM pais
LEFT JOIN idioma
ON pais.id = idioma.pais_id;

SELECT pais.nome AS pais_nome, idioma.nome AS idioma_nome FROM pais
RIGHT JOIN idioma
ON pais.id = idioma.pais_id;