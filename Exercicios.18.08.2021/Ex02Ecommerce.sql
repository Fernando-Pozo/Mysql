create database ecommerce;

use ecommerce;

create table produtos(
id bigint auto_increment,
 nome varchar(255) not null,
 marca varchar(255),
 quantidade int,
 preco decimal(8,2) not null,
 primary key (id)
);

select * from produtos;

insert into produtos(nome, marca, quantidade, preco) values ("camiseta", "polo", 20 , 50.00);
insert into produtos(nome, marca, quantidade, preco) values ("tenis", "nike", 10 , 250.00);
insert into produtos(nome, marca, quantidade, preco) values ("short", "OAKLEY", 15 , 80.00);
insert into produtos(nome, marca, quantidade, preco) values ("calça", "Calvin Klein", 10 , 180.00);

select * from produtos where preco > 500.00;

select * from produtos where preco < 500.00;

update produtos set preco = 580.00 where id = 2;
