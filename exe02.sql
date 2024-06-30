-- E-COMMERCE --

CREATE DATABASE db_mercadoABC;
USE db_mercadoABC;

CREATE TABLE tb_mercadoABC(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nomeProduto VARCHAR (300) NOT NULL,
marca VARCHAR(255),
preco DECIMAL(8,2),
quantidade INT NOT NULL,
validade DATE
);

INSERT INTO tb_mercadoABC (nomeProduto, marca, preco, quantidade, validade)
VALUES ("Fogão", "Eletrolux", 3000, 200, NULL ),
("Pneu", "GoodYear", 1500, 150, NULL),
("Arroz", "Camil", 35, 200, "2024-10-12"),
("Biscoito", "Richester", 2.50, 600, "2025-02-11"),
("Sorvete", "Nestle", 18, 32, "2024-07-14"),
("Caderno", "Tilibra", 26, 10, NULL),
("Cafeteira", "Britania", 120, 400, NULL),
("Miojo", "Nissan", 1.50, 70, "2024-08-31");

SELECT * FROM tb_mercadoABC;
SELECT * FROM tb_mercadoABC WHERE preco > 500;
SELECT * FROM tb_mercadoABC WHERE preco < 500;

UPDATE tb_mercadoABC SET preco = 0.50 WHERE codigo = 8;
UPDATE tb_mercadoABC SET quantidade = 40 WHERE codigo = 8;

SELECT * FROM tb_mercadoABC;





