SELECT lo.id, cl.nome, md.descricao as modelo, ma.descricao as marca, ca.descricao, ca.Ano, ca.cor, ca.Observacoes, lo.Data_retirada, lo.Data_devolucao, lo.valor, lo.Observacoes
FROM locacao as lo
inner join cliente as cl on cl.Id = lo.id_cliente
inner join carros as ca on ca.id = lo.id_carros
inner join modelos as md on md.id = ca.Id_modelos
inner join marcas as ma on ma.id = md.id_marcas;


insert into Locacao (Id, Id_Cliente, Id_Carros, Data_retirada, Data_devolucao, valor, observacoes) values ('1', '1', '2', '2023/04/14', '2023/04/16', '400', 'Entregar até as 18:00');
insert into Locacao (Id, Id_Cliente, Id_Carros, Data_retirada, Data_devolucao, valor, observacoes) values ('2', '2', '1', '2023/04/13', '2023/04/15', '350', 'Entregar até as 18:00');
insert into Locacao (Id, Id_Cliente, Id_Carros, Data_retirada, Data_devolucao, valor, observacoes) values ('3', '4', '2', '2023/04/16', '2023/04/19', '350', 'Entregar até as 18:00');
insert into Locacao (Id, Id_Cliente, Id_Carros, Data_retirada, Data_devolucao, valor, observacoes) values ('4', '6', '4', '2023/04/16', '2023/04/19', '350', 'Entregar até as 18:00');
insert into Locacao (Id, Id_Cliente, Id_Carros, Data_retirada, Data_devolucao, valor, observacoes) values ('5', '5', '5', '2023/04/17', '2023/04/20', '400', 'Entregar até as 18:00');
insert into Locacao (Id, Id_Cliente, Id_Carros, Data_retirada, Data_devolucao, valor, observacoes) values ('6', '3', '1', '2023/04/17', '2023/04/20', '400', 'Entregar até as 18:00');
insert into Locacao (Id, Id_Cliente, Id_Carros, Data_retirada, Data_devolucao, valor, observacoes) values ('7', '2', '1', '2023/04/17', '2023/04/20', '400', 'Entregar até as 18:00');

DELETE FROM Locacao
WHERE id=7;

