create database BRspeak;

use brspeak;

create table cadastro (
idCadastro int primary key auto_increment,
nome varchar(45),
email varchar(255),
senha varchar(45), 
nivel varchar(45)
constraint ckNivel check (nivel in ('Não Sabe', 'Básico', 'Intermediário', 'Avançado'))
);

create table nota (
idNota int,
fkCadastro int,
Q1 int,
Q2 int,
Q3 int
);

insert into Cadastro values
(default, 'Dom', 'dom@sptech.school', 'dom123', 'Avançado'),
(default, 'Giovana', 'giovana@sptech.school', 'giovana123', 'Básico'),
(default, 'Pedro', 'pedro@sptech.school', 'pedro123', 'Intermediário');

insert into nota values
(1, 1, 75, 80, 90),
(2, 1, 90, 95, 100),
(3, 2, 60, 90, 10),
(4, 2, 70, 95, 50),
(5, 3, 66, 70, 75),
(6, 3, 80, 80, 80);

select * from Cadastro;
select * from nota;

select * from Cadastro
	join nota
    on fkCadastro = idCadastro;

select * from Cadastro
	join nota
    on fkCadastro = idCadastro
    where Q1 like '7%';
    
select avg(Q1)
	from nota;
    
select avg(Q2)
	from nota;
    
select avg(Q3)
	from nota;
    
select Q1, Q2, Q3, avg((Q1 + Q2 + Q3) / 3) as Média
	from nota
	where fkCadastro = 1
group by Q1, Q2, Q3;


    
