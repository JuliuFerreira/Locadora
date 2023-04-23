SELECT ca.id, mo.descricao as modelo, ca.ano, ca.cor, ca.descricao, ca.observacoes
FROM carros as ca
inner join modelos as mo on ca.Id_Modelos = mo.id;

insert into Carros (Id, Id_Modelos, ano, cor, descricao, observacoes) values ('1', '2', '2022', 'Preto', '1.6 Manual', 'Veiculo com pequena avaria no para-choque dianteiro');  
insert into Carros (Id, Id_Modelos, ano, cor, descricao, observacoes) values ('2', '4', '2023', 'Prata', '1.6 Automatico', 'Veiculo sem nenhuma avaria');  
insert into Carros (Id, Id_Modelos, ano, cor, descricao, observacoes) values ('3', '6', '2022', 'Branco', '1.6 Automatico', 'Risco na porta dinteira esquerda');
insert into Carros (Id, Id_Modelos, ano, cor, descricao, observacoes) values ('4', '5', '2021', 'Preto', '1.8 Automatico', 'Veiculo sem nenhuma avaria');
insert into Carros (Id, Id_Modelos, ano, cor, descricao, observacoes) values ('5', '3', '2023', 'Prata', '1.8 Manual', 'Veiculo sem nenhuma avaria');
insert into Carros (Id, Id_Modelos, ano, cor, descricao, observacoes) values ('6', '3', '2019', 'Preto', '1.4 Manual', 'Veiculo com algumas avarias na lataria');
insert into Carros (Id, Id_Modelos, ano, cor, descricao, observacoes) values ('7', '2', '2022', 'Branco', '1.4 Manual', 'Sem avarias');

insert into Carros (Id, Id_Modelos, ano, cor, descricao, observacoes) values ('8', '2', '2022', 'verde', '1.4 Manual', 'Sem avarias');


UPDATE carros SET descricao = '1.8 Manual' WHERE id=3;

DELIMITER $$
CREATE TRIGGER tr_Verifica_Cor_Carros
BEFORE INSERT ON Carros
FOR EACH ROW
BEGIN
  DECLARE cor_valida BOOL;
  SET cor_valida = FALSE;
  IF NEW.Cor IN ('preto', 'branco', 'prata', 'cinza') THEN
    SET cor_valida = TRUE;
  END IF;
  IF NOT cor_valida THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cor não aceita, por favor, inserir uma das cores: Preto, Branco, prata, cinza.';
  END IF;
END$$
DELIMITER ;