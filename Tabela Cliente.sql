SELECT cl.* FROM cliente as cl;

insert into Cliente (Id, Nome, Email, Senha) Values ('1', 'Julio Cesar Ferreira', 'juliuferreira@gmail.com', '123456');
insert into Cliente (Id, Nome, Email, Senha) Values ('2', 'Gabriel Nunes', 'gaseinesdzn@hotmail.com', '123456');
insert into Cliente (Id, Nome, Email, Senha) Values ('3', 'Rafael Gomes', 'gomesrafael@hotmail.com', '123456');
insert into Cliente (Id, Nome, Email, Senha) Values ('4', 'João Silva', 'silvajoao@hotmail.com', '123456');
insert into Cliente (Id, Nome, Email, Senha) values ('5', 'Renato Fonseca', 'fonsecarenato@gmail.com', '123456');
insert into Cliente (Id, Nome, Email, Senha) values ('6', 'Fabricio junior', 'juniorf@gmail.com', '123456');
insert into Cliente (Id, Nome, Email, Senha) values ('7', 'Vivian Hames', 'vihames@gmail.com', '123456');
insert into Cliente (Id, Nome, Email, Senha) values ('8', 'Lara Ferreira', 'lferreira@gmail.com', '123456');
insert into Cliente (Id, Nome, Email, Senha) values ('9', 'Luã Pires', 'plua@gmail.com', '123456');
insert into Cliente (Id, Nome, Email, Senha) values ('10', 'Lincoln p. Ferreira', 'lincolnf@gmail.com', '123456');

CALL insere_cliente(11,'Rafel Rodrigues', 'r.fael@example.com', '123456');


UPDATE cliente SET Senha = '121212' WHERE id=1; 
UPDATE cliente SET email = 'nunesgabriel@gmail.com' WHERE id=2;


DELETE FROM Cliente
WHERE id=11;
select count(*) from cliente 

DELIMITER //

CREATE PROCEDURE insere_cliente(IN Id int, nome_cliente varchar(200), IN email_cliente varchar(250), IN senha_cliente varchar(30))
BEGIN
    INSERT INTO Cliente (Id,Nome, Email, Senha)
    VALUES (Id, nome_cliente, email_cliente, senha_cliente);
END //

DELIMITER ;


