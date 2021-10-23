/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database db_TheOfficeRH;

use db_theofficerh;

create table tb_func (
id_func bigint(5) auto_increment,
nome varchar(20) not null,
nascdata date,
cargo varchar(30) not null, 
salario real, 
ativo boolean,
primary key (id_func) 
);

select * from tb_func;

insert into tb_func (nome, nascdata, cargo, salario, ativo)
values ("Michael Scott", "1965-03-15", "Gerente Regional", 7500.00, 1);
insert into tb_func (nome, nascdata, cargo, salario, ativo)
values ("Dwight Schrute", "1970-01-20", "Vendedor", 4000.00, 1);
insert into tb_func (nome, nascdata, cargo, salario, ativo)
values ("Pam Beesly", "1979-03-25", "Secretária", 1800.00, 1);
insert into tb_func (nome, nascdata, cargo, salario, ativo)
values ("Jim Halpert", "1978-10-01", "Vendedor", 4000.00, 1);
insert into tb_func (nome, nascdata, cargo, salario, ativo)
values ("Angela Martin", "1974-11-11", "Contadora Chefe", 4500.00, 1);
insert into tb_func (nome, nascdata, cargo, salario, ativo)
values ("Phyllis Vance", "1965-07-10", "Representante de Vendas", 4000.00, 1);
insert into tb_func (nome, nascdata, cargo, salario, ativo)
values ("Oscar Martinez", "1972-11-15", "Contador", 1500.00, 1);
insert into tb_func (nome, nascdata, cargo, salario, ativo)
values ("Kevin Malone", "1968-06-01", "Contador", 800.00, 1);
insert into tb_func (nome, nascdata, cargo, salario, ativo)
values ("Kelly Kapoor", "1982-02-05", "Serviço ao Cliente", 1300.00, 1);
insert into tb_func (nome, nascdata, cargo, salario, ativo)
values ("Darryl Philbin", "1971-10-25", "Gerente de Armazém", 4300.00, 1);

select nome, salario from tb_func where salario < 2000;
select nome, salario from tb_func where salario > 2000;
select * from tb_func order by nascdata;





