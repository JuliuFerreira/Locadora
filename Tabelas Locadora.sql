create schema Locadora default charset utf8;

use Locadora;

CREATE TABLE Cliente (Id int not null primary key,
Nome varchar(200) not null,
Email varchar(250) not null,
Senha varchar(30) not null);

CREATE TABLE Marcas (Id int not null primary key,
Descricao varchar(255));

CREATE TABLE Modelos (id int not null primary key,
Id_Marcas int not null,
Descricao varchar(255),
foreign key (Id_Marcas) references Marcas(Id));

CREATE TABLE Carros (Id int not null primary key,
Id_Modelos int not null,
Ano int,
Cor varchar(15),
Descricao varchar(200),
Observacoes varchar(200),
foreign key (Id_Modelos) references Modelos(Id));

CREATE TABLE locacao (Id int not null primary key,
Id_Carros int not null,
Id_Cliente int not null,
Data_retirada date not null,
Data_devolucao date not null,
valor int not null,
Observacoes varchar(200),
foreign key (Id_Carros) references Carros(Id),
foreign key (Id_Cliente) references Cliente(Id));
 
insert into Cliente (Id, Nome, Email, Senha) Values ('1', 'Julio Cesar Ferreira', 'juliuferreira@gmail.com', '123456');