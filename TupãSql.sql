create database tupa;

use tupa;


create table corretor (
telefone varchar(14) not null primary key,
nome varchar(50) not null
)Engine=Innodb;

create table proposta (
cod_proposta int auto_increment not null primary key,
nivel_risco smallint not null
)Engine=Innodb;

create table cliente (
cod_cliente int auto_increment primary key,
nome varchar(50) not null,
idade int not null,
sexo char not null,
profissao varchar(30) not null,
telefone varchar(14) not null,
idade_aposentar int not null,
qtd_filhos smallint not null default '0',
casamento boolean not null default false,
renda_pretendida double not null,
imposto_renda varchar(12) not null,
cod_corretor int not null,
cod_proposta int not null, 
cor_telefone varchar(14) not null,
foreign key (cod_proposta) references proposta(cod_proposta) on delete restrict,
foreign key (cor_telefone) references corretor(telefone) on delete restrict
)Engine=InnoDB;
