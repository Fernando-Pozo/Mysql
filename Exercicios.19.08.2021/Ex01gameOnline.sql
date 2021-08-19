create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(255) not null,
primary key (id)
);

insert into tb_classe (classe) values ("Arqueiro");
insert into tb_classe (classe) values ("Guerreiro");
insert into tb_classe (classe) values ("Mago");
insert into tb_classe (classe) values ("Ninja");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255),
nivel int,
forca int,
defesa int,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, nivel, forca, defesa, classe_id) values ("mickey", 80, 5600, 4000, 3);
insert into tb_personagem (nome, nivel, forca, defesa, classe_id) values ("pateta", 25, 1600, 800, 4);
insert into tb_personagem (nome, nivel, forca, defesa, classe_id) values ("patrick", 45, 3500, 2000, 2);
insert into tb_personagem (nome, nivel, forca, defesa, classe_id) values ("flora", 18, 900, 1100, 1);

select * from tb_personagem;

select * from tb_personagem where forca > 2000;

select * from tb_personagem where defesa > 1000 and defesa < 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;

select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id where classe_id = 1;

