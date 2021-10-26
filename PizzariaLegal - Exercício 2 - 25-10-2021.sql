/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela pizza com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 45 reais.

Faça um select trazendo os Produtos com valor entre 29 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e pizza.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
id_categorias bigint (3) auto_increment,
tamanho_pizza enum("P", "M", "G"),
tipo_pizza enum("Doce", "Salgada"),



primary key(id_categorias)
);

insert into tb_categorias (tamanho_pizza, tipo_pizza)
values ("G", "Salgada"); 
insert into tb_categorias (tamanho_pizza, tipo_pizza)
values ("M", "Salgada"); 
insert into tb_categorias (tamanho_pizza, tipo_pizza)
values ("P", "Salgada"); 
insert into tb_categorias (tamanho_pizza, tipo_pizza)
values ("M", "Doce"); 
insert into tb_categorias (tamanho_pizza, tipo_pizza)
values ("P", "Doce"); 

create table tb_pizzas (
id_pizzas bigint (5) auto_increment,
sabor varchar (30) not null,
preco real,
meia boolean,
borda_Recheada enum ("Sim", "Não"),
fk_categorias bigint,

foreign key (fk_categorias) references tb_categorias(id_categorias),
primary key (id_pizzas)
);

insert into tb_pizzas (sabor, preco, meia, borda_recheada, fk_categorias)
values ("Margueritta", 54.99, 0, "Sim", 1);
insert into tb_pizzas (sabor, preco, meia, borda_recheada, fk_categorias)
values ("Meia Quatro Queijos/Abobrinha", 57.99, 1, "Não", 1);
insert into tb_pizzas (sabor, preco, meia, borda_recheada, fk_categorias)
values ("Morango com Chocolate", 49.99, 0, "Sim", 4);
insert into tb_pizzas (sabor, preco, meia, borda_recheada, fk_categorias)
values ("Argentina", 57.99, 0, "Sim", 2);
insert into tb_pizzas (sabor, preco, meia, borda_recheada, fk_categorias)
values ("Especial do Chefe", 71.99, 0, "Sim", 1);
insert into tb_pizzas (sabor, preco, meia, borda_recheada, fk_categorias)
values ("Banana com Canela", 41.99 , 0, "Sim", 5);
insert into tb_pizzas (sabor, preco, meia, borda_recheada, fk_categorias)
values ("Napolitana", 55.99, 0, "Sim", 2);
insert into tb_pizzas (sabor, preco, meia, borda_recheada, fk_categorias)
values ("Calabresa", 44.99, 0, "Não", 3);

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 29 and 60;

select * from tb_pizzas where sabor like "%C%";

select * from tb_pizzas inner join tb_categorias on
tb_categorias.id_categorias = tb_pizzas.fk_categorias;

select * from tb_pizzas where fk_categorias = 4;
