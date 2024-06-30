-- ESCOLA VALENTE --

CREATE DATABASE db_escolavalente;
USE db_escolavalente;

CREATE TABLE tb_escolavalente(
matricula INT AUTO_INCREMENT PRIMARY KEY,
nomeAluno VARCHAR (300) NOT NULL,
idade INT NOT NULL,
serie VARCHAR (10) NOT NULL,
turma VARCHAR (4) NOT NULL,
nota DECIMAL (3,1) NOT NULL
);

INSERT INTO tb_escolavalente (nomeAluno, idade, serie, turma, nota)
VALUES ("Lucas Costa", 13, "8° ano", "801A", 10),
("João Azevedo", 13, "8° ano", "801A", 6),
("Raphael Turtle", 14, "8° ano", "801A", 8.5),
("Rodrigo Araujo", 13, "8° ano", "801B", 5),
("Damon Salvatori", 13, "8° ano", "801B", 9.5),
("Elena Gilbert", 14, "8° ano", "801B", 7.5),
("Ribamar José", 13, "8° ano", "801B", 10),
("Carolina Bittencourt", 14, "8° ano", "801A", 6.5);

SELECT * FROM tb_escolavalente;
SELECT * FROM tb_escolavalente WHERE nota > 7.0;
SELECT * FROM tb_escolavalente WHERE nota < 7.0;

UPDATE tb_escolavalente SET turma = "801A" WHERE matricula = 6;
UPDATE tb_escolavalente SET turma = "801B" WHERE matricula = 1;

SELECT * FROM tb_escolavalente;