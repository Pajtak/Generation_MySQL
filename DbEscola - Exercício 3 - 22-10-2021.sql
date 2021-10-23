/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_escola;

use db_escola;

create table tb_alunes (
ra bigint(5) auto_increment,
nome varchar(30) not null,
datanasc date,
turma bigint (2),
nota real,
primary key (ra)
);

insert into tb_alunes (nome, datanasc, turma, nota)
values ("Charlinho", "1996-01-23", 121, 3.5);
insert into tb_alunes (nome, datanasc, turma, nota)
values ("Patrícia", "1997-05-12", 121, 9.4);
insert into tb_alunes (nome, datanasc, turma, nota)
values ("Pedro", "1994-01-30", 131, 6.7);
insert into tb_alunes (nome, datanasc, turma, nota)
values ("Maria Clara", "1994-11-13", 131, 8.5);
insert into tb_alunes (nome, datanasc, turma, nota)
values ("Luiza", "1993-06-03", 131, 9.5);
insert into tb_alunes (nome, datanasc, turma, nota)
values ("Alexandre", "1991-12-06", 141, 10.0);
insert into tb_alunes (nome, datanasc, turma, nota)
values ("Lídia", "1990-02-07", 141, 5.5);
insert into tb_alunes (nome, datanasc, turma, nota)
values ("Marlon", "1990-02-07", 141, 7.5);

select * from tb_alunes where nota < 7;
select * from tb_alunes where nota >= 7;

update tb_alunes set nota = 9.4 where ra = 3;
