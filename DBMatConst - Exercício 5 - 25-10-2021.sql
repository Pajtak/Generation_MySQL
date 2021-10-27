create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categorias (
id_categorias bigint (3) auto_increment,
marca varchar(20),
departamento varchar(30),

primary key(id_categorias)
);

insert into tb_categorias (marca, departamento)
values ("Coral", "Tintas e Acessórios");
insert into tb_categorias (marca, departamento)
values ("Votoran", "Materiais de Construção");
insert into tb_categorias (marca, departamento)
values ("Inspire", "Iluminação");
insert into tb_categorias (marca, departamento)
values ("Tigre", "Materiais Hidraulicos");
insert into tb_categorias (marca, departamento)
values ("Dexter", "Ferramentas");


create table tb_produtos (
id_produtos bigint (5) auto_increment,
nome varchar (30) not null,
preco real,
envio boolean,
quant_estoque varchar (10),
fk_categorias bigint,

foreign key (fk_categorias) references tb_categorias(id_categorias),
primary key (id_produtos)
);

insert into tb_produtos (nome, preco, envio, quant_estoque, fk_categorias)
values ("Furadeira e Parafusadeira", 349.99, 1, 80, 5);
insert into tb_produtos (nome, preco, envio, quant_estoque, fk_categorias)
values ("Cano CPCV", 61.99, 0, 340, 4);
insert into tb_produtos (nome, preco, envio, quant_estoque, fk_categorias)
values ("Cano Polipropeno", 44.99, 0, 400, 4);
insert into tb_produtos (nome, preco, envio, quant_estoque, fk_categorias)
values ("Ventilador Teto 3 pás", 249.99, 0, 90, 3);
insert into tb_produtos (nome, preco, envio, quant_estoque, fk_categorias)
values ("Tinta Acrílica 20l", 299.99, 1, 50, 1);
insert into tb_produtos (nome, preco, envio, quant_estoque, fk_categorias)
values ("Tinta Acrílica 3.6L", 114.99, 1, 180, 1);
insert into tb_produtos (nome, preco, envio, quant_estoque, fk_categorias)
values ("Cimento CPII", 21.99, 1, 79, 2);
insert into tb_produtos (nome, preco, envio, quant_estoque, fk_categorias)
values ("Cimento Obras Est", 28.99, 1, 55, 2);

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categorias on
tb_categorias.id_categorias = tb_produtos.fk_categorias;

select * from tb_produtos where fk_categorias = 3;