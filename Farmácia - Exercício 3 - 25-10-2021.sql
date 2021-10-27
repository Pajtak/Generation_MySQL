/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra B.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/
create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias (
id_categorias bigint (3) auto_increment,
tarja enum("Preta", "Vermelha", "Sem Tarja"),
receita boolean,
produtos_gerais boolean,



primary key(id_categorias)
);

insert into tb_categorias (tarja, receita, produtos_gerais)
values ("Preta", 1, 0);
insert into tb_categorias (tarja, receita, produtos_gerais)
values ("Vermelha", 1, 0);
insert into tb_categorias (tarja, receita, produtos_gerais)
values ("Vermelha", 0, 0);
insert into tb_categorias (tarja, receita, produtos_gerais)
values ("Sem Tarja", 0, 0);
insert into tb_categorias (tarja, receita, produtos_gerais)
values ("Sem Tarja", 0, 1);


 


create table tb_produtos (
id_produtos bigint (5) auto_increment,
nome varchar (30) not null,
preco real,
validade date,
quant_estoque bigint (3),
fk_categorias bigint,

foreign key (fk_categorias) references tb_categorias(id_categorias),
primary key (id_produtos)
);

insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Sorine", 17.99, 24-07-2022, 129, 4);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Hidratante Neutrogena", 41.99, 23-10-2022, 46, 5);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Metformina", 40.00, 31-12-2023, 70, 2);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Lixiana", 200.00, 12-04-2023, 37, 2);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Oxypynal", 124.99, 21-12-2023, 32, 1);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Exodus", 182.99, 01-02-2022, 67, 2);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Captril", 112.99, 30-05-2022, 89, 3);
insert into tb_produtos (nome, preco, validade, quant_estoque, fk_categorias)
values ("Sabonete Phebo", 5.99, 29-08-2022, 90, 5);

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60;

select * from tb_produtos where sabor like "%B%";

select * from tb_produtos inner join tb_categorias on
tb_categorias.id_categorias = tb_produtos.fk_categorias;

select * from tb_produtos where fk_categorias = 5;
