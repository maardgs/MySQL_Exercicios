-- DB GENERATION GAME ONLINE --

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
num INT AUTO_INCREMENT PRIMARY KEY,
classe VARCHAR (20),
arma VARCHAR (50)
);

INSERT INTO tb_classes (classe, arma)
VALUES ("Lutador", "Luva"),
("Guerreiro", "Espada"),
("Arqueiro", "Arco"),
("Mago", "Cajado"),
("Atirador", "Ak-47");

CREATE TABLE tb_personagens(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(80) NOT NULL,
raça VARCHAR (255),
nivel INT,
clã VARCHAR (255),
humor VARCHAR (255),
classe_id INT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(num)
);

INSERT INTO tb_personagens (nome, raça, nivel, clã, humor, classe_id)
VALUES ("Musa", "elfo", 15, "Uchiha", "Amável", 3),
("Flora", "Anão", 14, "Snow", "Agressivo", 4),
("Aisha", "Humano", 18, "Uzumaki", "Alegre", 2),
("Brandon", "Orc", 70, "Frozen", "Antiquado", 5), 
("Thorin", "Anão", 20, "Baggins", "Corajoso", 4),
("Dulce", "Humano", 25, "Stark", "Determinado", 2),
("Gastão", "Orc", 50, "Lannister", "Feroz", 5),
("Gregorio", "Elfo", 18, "Greyjoy", "Sereno", 3);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

-- Poder de ataque > 2000 = nível 50.
SELECT * FROM tb_personagens WHERE nivel > 50;

-- 1000 < poder de defesa < 2000 = 30 < nivel < 50.
SELECT * FROM tb_personagens WHERE nivel > 30 AND nivel <50;

-- PERSONAGENS QUE POSSUEM "C" no nome
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

-- Inner Join

SELECT nome, raça, nivel, clã, humor, tb_classes.classe, tb_classes.arma
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.num;

SELECT nome, raça, nivel, clã, humor, tb_classes.classe, tb_classes.arma
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.num
WHERE tb_classes.classe = "Guerreiro";

-- GAME OVER --
 



