create database escola;

use escola;

create table alunos(
id bigint auto_increment,
 nome varchar(255) not null,
 curso varchar(255),
 ra int,
 mensalidade decimal(8,2) not null,
 primary key (id)
);

insert into alunos(nome, curso, ra, mensalidade, media) values ("Pedro", "Analise e desenvolvimento de sistemas", 36802019, 580.00, 8);
insert into alunos(nome, curso, ra, mensalidade, media) values ("jessica", "Engenharia da computação", 22152020, 1258.00, 6);
insert into alunos(nome, curso, ra, mensalidade, media) values ("Vitor", "Sistemas de informação", 23102019, 856.00, 9);

select * from alunos where media >= 7;
select * from alunos where media < 7;

update alunos set media = 7 where id = 2;
