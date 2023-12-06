CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
descricao varchar(255)NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(200) NOT NULL,
dataValidade DATE NOT NULL, 
preco decimal(5, 2) not null,
categorias_id bigint, 
primary key (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Frutas", "Deliciosas frutas");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Verduras", "Deliciosas verduras");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Legumes", "Deliciosos legumes");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id) 
VALUES ("Maçã", "2022-05-06", 1.50,1);
INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id) 
VALUES ("Pêra", "2022-08-07", 2.80,1);
INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id) 
VALUES ("Batata doce", "2023-05-06", 1.20,3);
INSERT INTO tb_produtos (nome, dataValidade, preco, categorias_id) 
VALUES ("Brócolis", "2023-08-16", 1.30,2);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%"

SELECT
    tb_produtos.nome,
    tb_produtos.preco,
    tb_produtos.dataValidade,
    tb_categorias.descricao AS categoria_descricao
FROM
    tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;




