/*Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra J.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria Java).

Salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias (
id_categorias bigint (3) auto_increment,
materia enum("Inglês", "Francês", "Espanhol", "Java", "Python"),
professor varchar(30),

primary key(id_categorias)
);

insert into tb_categorias (materia, professor)
values ("Francês", "François");
insert into tb_categorias (materia, professor)
values ("Python", "Pierre");
insert into tb_categorias (materia, professor)
values ("Espanhol", "Rayanni");
insert into tb_categorias (materia, professor)
values ("Inglês", "Renata");
insert into tb_categorias (materia, professor)
values ("Python", "Dexter");
insert into tb_categorias (materia, professor)
values ("Java", "Jairo");


create table tb_produtos (
id_produtos bigint (5) auto_increment,
valor real not null,
horario time,
presencial boolean,
turmas bigint,
fk_categorias bigint,

foreign key (fk_categorias) references tb_categorias(id_categorias),
primary key (id_produtos)
);

insert into tb_produtos (valor, horario, presencial, turmas, fk_categorias)
values (200.00, "20:00", 0, 1, 1);
insert into tb_produtos (valor, horario, presencial, turmas, fk_categorias)
values (33.99, "08:00", 0, 2, 2);
insert into tb_produtos (valor, horario, presencial, turmas, fk_categorias)
values (40.99, "08:00", 0, 3, 6);
insert into tb_produtos (valor, horario, presencial, turmas, fk_categorias)
values (33.99, "08:00", 0, 4, 5);
insert into tb_produtos (valor, horario, presencial, turmas, fk_categorias)
values (180.00, "21:00", 1, 5, 3);
insert into tb_produtos (valor, horario, presencial, turmas, fk_categorias)
values (230.00, "17:00", 0, 6, 4);
insert into tb_produtos (valor, horario, presencial, turmas, fk_categorias)
values (200.00, "19:00", 1, 7, 1);
insert into tb_produtos (valor, horario, presencial, turmas, fk_categorias)
values (180.00, "19:00", 0, 8, 3);
select * from tb_produtos where valor > 50.00;

select * from tb_produtos where valor between 3.00 and 60;

select * from tb_categorias where materia like "%C%";

select * from tb_produtos inner join tb_categorias on
tb_categorias.id_categorias = tb_produtos.fk_categorias;

select * from tb_produtos where fk_categorias = 3;