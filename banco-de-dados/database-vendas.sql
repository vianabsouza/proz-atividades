CREATE TABLE produtos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao VARCHAR(100),
  preco FLOAT NOT NULL,
  categoria VARCHAR(50),
  estoque INT NOT NULL DEFAULT 0
);

CREATE TABLE vendas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  quantidade INT NOT NULL,
  data_venda VARCHAR(10) NOT NULL,
  produto_id INT NOT NULL,
  CONSTRAINT fk_produto FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO produtos (nome, descricao, preco, categoria, estoque) VALUES
('Batom Matte', 'Batom de longa duração com acabamento matte.', 39.90, 'Maquiagem', 200),
('Base Líquida', 'Base líquida com cobertura média e acabamento natural.', 79.90, 'Maquiagem', 150),
('Máscara de Cílios', 'Máscara que proporciona volume e alongamento aos cílios.', 49.90, 'Maquiagem', 120),
('Sombra Compacta', 'Sombra compacta em diversas cores para looks variados.', 29.90, 'Maquiagem', 180),
('Perfume Floral', 'Perfume feminino com notas florais e frutais.', 129.90, 'Perfumes', 80),
('Creme Hidratante', 'Creme para hidratação intensa da pele.', 59.90, 'Cuidados com a Pele', 250),
('Esmalte Colorido', 'Esmalte com alta durabilidade e brilho intenso.', 19.90, 'Unhas', 300),
('Kit de Pincéis', 'Kit com 10 pincéis para maquiagem de diferentes formatos.', 89.90, 'Acessórios', 70);

INSERT INTO vendas (quantidade, data_venda, produto_id) VALUES
(3, '01/10/2024', 1),
(2, '01/10/2024', 2),
(1, '01/10/2024', 3),
(5, '01/10/2024', 4),
(4, '01/10/2024', 5);

DELIMITER $$

CREATE PROCEDURE relatorio_diario()
BEGIN
  CREATE TEMPORARY TABLE relatorio (
    produto_id INT,
    nome_produto VARCHAR(100),
    quantidade_total INT
  );

  INSERT INTO relatorio(produto_id, nome_produto, quantidade_total)
  SELECT vendas.produto_id, produtos.nome, SUM(vendas.quantidade) FROM vendas
  INNER JOIN produtos
  ON vendas.produto_id = produtos.id
  GROUP BY vendas.produto_id, produtos.nome;

  SELECT * FROM relatorio;

END $$

DELIMITER ;

CALL relatorio_diario();