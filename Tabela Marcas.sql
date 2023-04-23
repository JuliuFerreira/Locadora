SELECT MA.* FROM marcas as MA;

insert into Marcas (Id, Descricao) values ('1', 'Chevrolet');
insert into Marcas (Id, Descricao) values ('2', 'Hyundai');
insert into Marcas (Id, Descricao) values ('3', 'Peugeot');
insert into Marcas (Id, Descricao) values ('4', 'Renault');
insert into Marcas (Id, Descricao) values ('5', 'GM');

DELETE FROM Marcas
WHERE id=5;


