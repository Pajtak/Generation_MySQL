/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são aves ou legumes).

Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias (
id_categorias bigint (3) auto_increment,
tipoCarne enum("Bovina", "Suína", "Aves"),
moída boolean,
produtos_gerais boolean,



primary key(id_categorias)
);

insert into tb_categorias (tipoCarne, moída, produtos_gerais)
values ("Bovina", 0, 0);
insert into tb_categorias (tipoCarne, moída, produtos_gerais)
values ("Bovina", 1, 0);
insert into tb_categorias (tipoCarne, moída, produtos_gerais)
values ("Suína", 0, 0);
insert into tb_categorias (tipoCarne, moída, produtos_gerais)
values ("Aves", 0, 0);
insert into tb_categorias (tipoCarne, moída, produtos_gerais)
values ("Farofa", 0, 1);


create table tb_produtos (
id_produtos bigint (5) auto_increment,
carne varchar (30) not null,
preco real,
peso varchar(10),
quant_estoque varchar (10),
fk_categorias bigint,

foreign key (fk_categorias) references tb_categorias(id_categorias),
primary key (id_produtos)
);

insert into tb_produtos (carne, preco, peso, quant_estoque, fk_categorias)
values ("Fraldinha", 29.99, "1kg", "100kg", 1);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Alcatra Peito", 41.99, "1kg", "46Kg", 1);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Ácem", 28.99, "1kg", "98kg", 2);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Linguiça Toscana", 45.00, "1Kg", "37Kg", 3);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Coxa e Sobrecoxa", 19.99, "1Kg", "32Kg", 4);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Farofa", 13.99, "250G", "67", 5);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("File Mignon", 89.99, "1Kg", "79Kg", 1);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Molho Barbecue", 25.99, "250GG", "78", 5);

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categorias on
tb_categorias.id_categorias = tb_produtos.fk_categorias;

select * from tb_produtos where fk_categorias = 1;