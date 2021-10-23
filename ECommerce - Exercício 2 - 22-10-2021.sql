/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database db_ecommerce;
use db_ecommerce;
create table tb_products(
id_product bigint(5) auto_increment,
nome varchar(20) not null,
marca varchar(20) not null,
preco real,
quantestoque bigint(5),
dispenvio boolean,
primary key (id_product)
);

select * from tb_products;

insert into tb_products (nome, marca, preco, quantestoque, dispenvio)
values ("Notebook", "Dell", 3500.00, "21", 1);
insert into tb_products (nome, marca, preco, quantestoque, dispenvio)
values ("Controle PS5", "Sony", 287.00, "71", 1);
insert into tb_products (nome, marca, preco, quantestoque, dispenvio)
values ("Mouse 23 Botões", "Warrior", 220.00, "12", 1);
insert into tb_products (nome, marca, preco, quantestoque, dispenvio)
values ("Notebook", "VAIO", 4000.00, "31", 1);
insert into tb_products (nome, marca, preco, quantestoque, dispenvio)
values ("Notebook", "HP", 2700.00, "11", 1);
insert into tb_products (nome, marca, preco, quantestoque, dispenvio)
values ("Monitor Gamer 19'", "LG", 1200.00, "21", 1);
insert into tb_products (nome, marca, preco, quantestoque, dispenvio)
values ("Cabo HDMI 5 metros", "Samsung", 100.00, "91", 1);
insert into tb_products (nome, marca, preco, quantestoque, dispenvio)
values ("Celular Tijolo", "Nokia", 12000.00, "1", 1);

select * from tb_products where preco < 500;
select * from tb_products where preco > 500;

update tb_products set preco = 3200 where id_product = 5;
