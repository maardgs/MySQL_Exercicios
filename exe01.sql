-- Inserção de dados na tabela tb_funcionarios --

CREATE DATABASE db_funcionarios;
USE db_funcionarios;

CREATE TABLE tb_funcionarios(
inscricao BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
email VARCHAR(65) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL(8,2) NOT NULL,
dataAdmissao DATE NOT NULL
);

INSERT INTO tb_funcionarios (nome, email, cargo, salario, dataAdmissao)
VALUES ("Rodrigo Silveira", "rodrigosilveira@empresarh.com", "Desenvolvedor Pleno", "9000", "2022-12-05"),
("Larissa Rodriguez", "larissarodriguez@empresarh.com", "Gerente", "2000", "2021-05-05"),
("Lucas Camargo", "lucascamargo@empresarh.com", "Desenvolvedor Junior", "3000", "2021-03-10"),
("João Cecílio", "joaocecilio@empresarh.com", "CostumerSuccess", "3500", "2021-11-12"),
("Wallace Lima", "wallacelima@empresarh.com", "Atendente", "1500", "2020-06-05");

SELECT * FROM tb_funcionarios;
SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET cargo = "CostumerSuccess" WHERE inscricao = 5;
UPDATE tb_funcionarios SET salario = 3500 WHERE inscricao = 5;
SELECT * FROM tb_funcionarios;



