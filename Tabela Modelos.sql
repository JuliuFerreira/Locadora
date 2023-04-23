SELECT md.id, ma.Descricao, md.Descricao
FROM modelos as md 
inner join marcas as ma on md.Id_Marcas = ma.Id;

insert into Modelos (Id, Id_Marcas, Descricao) values ('1', '1', 'Cruze LTZ');
insert into Modelos (Id, Id_Marcas, Descricao) values ('2', '3', '208');
insert into Modelos (Id, Id_Marcas, Descricao) values ('3', '4', 'Sandero');
insert into Modelos (Id, Id_Marcas, Descricao) values ('4', '2', 'HB20');
insert into Modelos (Id, Id_Marcas, Descricao) values ('5', '3', '308');
insert into Modelos (Id, Id_Marcas, Descricao) values ('6', '1', 'Onix');
insert into Modelos (Id, Id_Marcas, Descricao) values ('7', '2', 'i30');


UPDATE modelos SET Descricao = 'Onix LT' WHERE id=6;










