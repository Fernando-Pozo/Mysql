create database db_rh;

use db_rh;

create table funcionaries(
 id bigint auto_increment,
 nome varchar(255) not null,
 cpf bigint,
 cargo varchar(255),
 salario decimal(8,2) not null,
 primary key (id)
);

select * from funcionaries;

insert into funcionaries(nome, cpf, cargo, salario) values ("Fernando", "78956759654", "Analista", 2500.00);
insert into funcionaries(nome, cpf, cargo, salario) values ("Rafael", "45678965469", "tech lead", 5600.00);
insert into funcionaries(nome, cpf, cargo, salario) values ("larissa", "78564267898", "Srum master", 4000.00 );
insert into funcionaries(nome, cpf, cargo, salario) values ("Ana", "65963154863", "Analista", 2500.00);
insert into funcionaries(nome, cpf, cargo, salario) values ("Miguel", "54686534969", "Analista", 3800.00);

select * from funcionaries where salario > 2000.00;

select * from funcionaries where salario < 2000.00;

update funcionaries set salario = 3000.00 where id = 1;