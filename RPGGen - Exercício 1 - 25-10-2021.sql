/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game. O sistema trabalhará com 2 tabelas 
tb_personagem e tb_classe.
Autor: Bruno F Pajtak
Data: 25/10/2021 */

create database db_generation_game_online;
use db_generation_game_online;
/*Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.*/
create table tb_classe (
id_classe bigint(5) auto_increment,
raça varchar(20) not null,
especialidade varchar(50),
vitalidadeIni bigint(3),
manaIni bigint(3),

primary key (id_classe)
);
-- Popule esta tabela classe com até 5 dados.
insert into tb_classe (raça, especialidade, vitalidadeIni, manaIni)
values ("Guerreiro", "Força Física", "500", "50");
insert into tb_classe (raça, especialidade, vitalidadeIni, manaIni)
values ("Assassino", "Furtividade", "350", "200");
insert into tb_classe (raça, especialidade, vitalidadeIni, manaIni)
values ("Mago", "Controle dos Elementos", "100", "450");
insert into tb_classe (raça, especialidade, vitalidadeIni, manaIni)
values ("Ladrão", "Pungismo", "300", "250");
insert into tb_classe (raça, especialidade, vitalidadeIni, manaIni)
values ("Arqueiro", "Tempo de Mira", "250", "300");

/*Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online*/
create table tb_personagem (
id_personagem bigint(5) auto_increment,
nome varchar (15) not null,
lvl bigint (3),
mainArma varchar (50),
secArma varchar (50),
atkpow bigint (5),
defpow bigint (5),
fk_classe bigint,

foreign key (fk_classe) references tb_classe(id_classe),
primary key (id_personagem)
);

-- Popule esta tabela personagem com até 8 dados.
insert into tb_personagem (nome, lvl, mainArma, secArma, fk_classe, atkpow, defpow)
values ("Arayam", "50", "Cajado de Fogo", "Punhal da Perdição", 3, 1500, 700);
insert into tb_personagem (nome, lvl, mainArma, secArma, fk_classe, atkpow, defpow)
values ("Banquo", "67", "Clava Draconiana", "Escudo do Pensamento", 1, 2300, 2100);
insert into tb_personagem (nome, lvl, mainArma, secArma, fk_classe, atkpow, defpow)
values ("Aramis", "70", "Adaga Heróica", "Capa de Invisibilidade", 2, 3600, 2000);
insert into tb_personagem (nome, lvl, mainArma, secArma, fk_classe, atkpow, defpow)
values ("Portus", "72", "Sabre da Ruína", "Escudo Infinito", 1, 2900, 2500);
insert into tb_personagem (nome, lvl, mainArma, secArma, fk_classe, atkpow, defpow)
values ("D'Artagnan", "65", "Arco Heróico", "Espada Simples", 5, 4000, 900);
insert into tb_personagem (nome, lvl, mainArma, secArma, fk_classe, atkpow, defpow)
values ("Navarov", "90", "Cajado dos Elementos", "Livro de Feitiços Arcanos", 1, 5000, 1200);
insert into tb_personagem (nome, lvl, mainArma, secArma, fk_classe, atkpow, defpow)
values ("Lev", "25", "Adaga Simples", "Capa do Ladrão", 4, 800, 1000);
insert into tb_personagem (nome, lvl, mainArma, secArma, fk_classe, atkpow, defpow)
values ("Mikasa", "23", "Machado Simples", "Escudo do Guerreiro", 1, 1200, 900);
insert into tb_personagem (nome, lvl, mainArma, secArma, fk_classe, atkpow, defpow)
values ("Caron", "99", "Arco do Infinito", "Aljava Perfeita", 5, 6000, 1500);

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where atkpow > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defpow between 1000 and 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where nome like "%C%";

-- Faça um um select com Inner join entre tabela classe e personagem.
select * from tb_personagem inner join  tb_classe on tb_classe.id_classe = tb_personagem.fk_classe;
-- Faça um select onde traga todos os personagem de uma classe específica
select * from tb_personagem where fk_classe = 1;
