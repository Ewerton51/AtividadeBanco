CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_personagens (descricao)
VALUES ("irlandês");
INSERT INTO tb_personagens (descricao)
VALUES ("Alemão");
INSERT INTO tb_personagens (descricao)
VALUES ("Oriental");
INSERT INTO tb_personagens (descricao)
VALUES ("Plebeu");
INSERT INTO tb_personagens (descricao)
VALUES ("Jovem");
INSERT INTO tb_personagens (descricao)
VALUES ("Cruel");
INSERT INTO tb_personagens (descricao)
VALUES ("Espanhol");
INSERT INTO tb_personagens (descricao)
VALUES ("Eslavo");
INSERT INTO tb_personagens (descricao)
VALUES ("Nórdico");

SELECT * FROM tb_personagens;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
habilidade varchar(255) NOT NULL,
nível int, 
valor decimal(6, 2),
personagens_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (personagens_id) REFERENCES tb_personagens(id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes (habilidade, nível, valor, personagens_id)
VALUES ("Resistência", 30, "100.0", 1);
INSERT INTO tb_classes (habilidade, nível, valor, personagens_id)
VALUES ("Força", 60, "500.00", 2);
INSERT INTO tb_classes (habilidade, nível, valor, personagens_id)
VALUES ("Velocidade", 20, "150.0", 3);
INSERT INTO tb_classes (habilidade, nível, valor, personagens_id)
VALUES ("Engenheiro", 15, "80.0", 4);
INSERT INTO tb_classes (habilidade, nível, valor, personagens_id)
VALUES ("Agilidade", 30, "100.0", 5);
INSERT INTO tb_classes (habilidade, nível, valor, personagens_id)
VALUES ("SuperForça", 100, "200.0", 6);
INSERT INTO tb_classes (habilidade, nível, valor, personagens_id)
VALUES ("Arqueiro", 60, "350.0", 7);
INSERT INTO tb_classes (habilidade, nível, valor, personagens_id)
VALUES ("Magia", 100, "1000.0", 8);

SELECT * FROM tb_classes;
SELECT * FROM tb_classes WHERE valor > 300.00;
SELECT * FROM tb_classes WHERE nível <40;
SELECT * FROM tb_classes WHERE valor BETWEEN 200 AND 700;
SELECT * FROM tb_classes WHERE habilidade LIKE "%c%";

SELECT habilidade, nível, valor, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes= tb_classes.id;












