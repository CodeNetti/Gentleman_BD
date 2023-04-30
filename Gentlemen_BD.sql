create database GENTLEMAN;
use GENTLEMAN;

/*Criando a tabela Cliente e inserindo valores nela  */

CREATE TABLE Cliente (
  id_cliente INT  PRIMARY KEY NOT NULL AUTO_INCREMENT,  
  Nome VARCHAR(50) NOT NULL,
  Endereço VARCHAR (100) NOT NULL,
  Telefone VARCHAR(20) NOT NULL,
  Sexo VARCHAR(10) NOT NULL
);

INSERT INTO Cliente(Nome,Endereço,Telefone,Sexo)
VALUES 
 ('Guilherme Sella', 'Rua Deputado Fabio , 243', '(11)95984-8463','M'),
 ('Enzo Augusto', 'Rua Campus Party, 1022', '(11)95797-7144','M'),
('Beatriz Silva', 'Rua Enildo Magalhães, 666', '(11)98208-4023','F'),
 ('Tiffany Wolf', 'Rua Aurelía, 891', '(11)92365-7788','F'),
 ('Maria Catarina', 'Rua Inacío, 1071', '(11)98877-1155','F'),
('Carla Rodrigues', 'Rua das Flores, 789', '(11) 99999-3333', 'F'),
('Diego Santos', 'Rua dos Pinheiros, 1010', '(11) 99999-4444', 'M'),
('Elaine Pereira', 'Av. Brasil, 1234', '(11) 99999-5555', 'F');
SELECT * FROM Cliente;
/* Fim */


/*Criando a tabela Venda e inserindo valores nela */
CREATE TABLE Venda (
  Id_Venda INT NOT NULL AUTO_INCREMENT,
  Id_Cliente INT NOT NULL,
  Data_Pedido DATE NOT NULL,
  Valor DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (Id_Venda),
  FOREIGN KEY (Id_cliente) REFERENCES Cliente(id_cliente)
);

INSERT INTO Venda(Id_Venda,Id_Cliente,Data_Pedido,Valor)VALUES 
 (null,1,'2023-04-18', 850.00),
 (null,2,'2023-04-19', 500.00),
(null,3,'2023-04-20', 587.00),
 (null,4,'2023-04-20', 274.00),
 (null,5,'2023-04-30', 1000.00),
(null,6,'2023-04-1', 1951.00),
(null,7,'2023-05-2', 100.00),
(null,8,'2023-05-3', 398.00),
(null,9,'2023-05-15', 250.00),
(null,10,'2023-06-30', 2000.00);
SELECT * FROM Venda;
/* Fim */

/*Criando a tabela Perfumes e inserindo valores nela */

CREATE TABLE Perfumes (
  id_perfumes INT  PRIMARY KEY NOT NULL AUTO_INCREMENT,
  Marca VARCHAR  (50) NOT NULL,
  Amadeirados VARCHAR(50) NOT NULL,
  Aromáticos VARCHAR (100) NOT NULL,
  Cítricos VARCHAR(20) NOT NULL,
  Unidades_P  INT NOT NULL
   
);

INSERT INTO  Perfumes(Marca,Amadeirados,Aromáticos,Cítricos,Unidades_P)VALUES
('Ralph Lauren','Polo Black','Polo Red Rush','Polo Blue Ralph',60),
('Dior','Dior Homme','Sauvage','JOY',5),
('Paco Rabanne','1 Million',' Olympea','EDT Phantom',25),
('Hinode','Lattitude Expedition','Eterna Blue','Fougère ',10),
('Loccitane','Amburana','EN PROVENCE','Capim-Limão',50),
('Eudora',' Volpe','Carbon Speed','Magnific Audaz',500),
('Carolina Herrera','212','212 Vip Black ','212 Vip Green ',100),
('Dolce & Gabbana','The One Men ','Light Blue Italian','Light Blue Pour',3),
('Calvin Klein ','Ck Be','CK in2U','CK One',200),
('Ralph Lauren','Polo Black','Polo Red Rush','Polo Blue Ralph',10);
select * from Perfumes;
/* Fim */

/*Criando a tabela Acessórios e inserindo valores nela */

CREATE TABLE Acessórios (

  id_Acessórios INT  PRIMARY KEY NOT NULL AUTO_INCREMENT,
  Colares VARCHAR(50) NOT NULL,
  Brincos VARCHAR (100) NOT NULL,
  Bolsas VARCHAR(20) NOT NULL,
  Pulseiras VARCHAR(20) NOT NULL,
  Unidades_A INT NOT NULL
   
);
INSERT INTO  Acessórios (Colares,Brincos,Bolsas,Pulseiras,Unidades_A)VALUES
('Choker','Stud','Shopper','Misanga',10),
('Colar','Leverback','Tranverse bag','Spencer',5),
('Princess','Huggie','Clutch','Big',25),
('Matinèe','Hoop','Bolsa satchel','Glam',10),
('Opera','Drop','Doctor Bag','Dot',50),
('Lariat','Dangle','Bolsa tiracolo','Kaya',30),
('Gold 10k','Teadrop','Saco','Alexa',100),
('Silver 950','English lock','Bag','Naka',3),
('Pink Gold ','Wire Hook','Pochete','Perle',200),
('White Gold','Chandelier','Duffel','Lyon',10);
select * from Acessórios;

/* Fim */

/*Criando a tabela Moda Masculina e inserindo valores nela */
CREATE TABLE Moda_Masculina(
  id_mm INT  PRIMARY KEY NOT NULL AUTO_INCREMENT,
  Terno VARCHAR(50) NOT NULL,
  Calçados VARCHAR (100) NOT NULL,
  Polos VARCHAR(100) NOT NULL,
  Unidades_M INT 
);

INSERT INTO  Moda_Masculina (Terno,Calçados,Polos,Unidades_M)VALUES
("Diamond Armor", "Berluti Alessandro", "Polo de cashmere", 5),
("Stuart Hughes", "Louis Vuitton", "Polo de seda", 10),
("Vanquish II", "A. Testoni", "Polo de algodão pima", 7),
("Ermenegildo Zegna", "Gucci Horsebit Loafer", "Polo de lã merino", 4),
("William Fioravanti", "John Lobb Lopez", "Polo de algodão orgânico", 3),
("Kiton", "Edward Green Galway", "Polo de linho", 6),
("Brioni", "Bontoni Patina", "Polo de malha", 8),
("Tom Ford", "Crockett & Jones Coniston", "Polo de bambu", 3),
("Paul Stuart", "Allen Edmonds Park Avenue", "Polo de jersey", 10),
("Canali", "Church's Consul", "Polo de algodão", 9);
select * from Moda_Masculina;

/* Fim */


/*Criando a tabela Moda Feminina e inserindo valores nela */
CREATE TABLE Moda_Feminina(
  id_mf INT  PRIMARY KEY NOT NULL AUTO_INCREMENT,
  Blazer VARCHAR(50) NOT NULL,
  Vestidos  VARCHAR (100) NOT NULL,
  Saltos VARCHAR(50) NOT NULL,
  Unidades_F INT 
 ); 

  INSERT INTO  Moda_Feminina (Blazer,Vestidos,Saltos,Unidades_F)VALUES
("Blazer Victoria Beckham", "Vestido Dior Haute Couture", "Sapato Stuart Weitzman", 5),
("Blazer Chanel", "Vestido Elie Saab", "Sapato Harry Winston", 3),
("Blazer Balmain", "Vestido Ralph & Russo", "Sapato The House of Harry Winston", 7),
("Blazer Saint Laurent", "Vestido Versace", "Sapato Stuart Weitzman Nudist", 4),
("Blazer Gucci", "Vestido Valentino", "Sapato Christian Louboutin Pigalle", 3),
("Blazer Tom Ford", "Vestido Zuhair Murad", "Sapato Jimmy Choo", 6),
("Blazer Givenchy", "Vestido Giambattista Valli", "Sapato Manolo Blahnik", 8),
("Blazer Prada", "Vestido Alexander McQueen", "Sapato Roger Vivier", 10),
("Blazer Dolce & Gabbana", "Vestido Oscar de la Renta", "Sapato Gucci", 10),
("Blazer Fendi", "Vestido Roberto Cavalli", "Sapato Louis Vuitton", 9);
select * from Moda_Feminina;

/* Fim */

/*Criando a tabela Estoque e inserindo valores nela */
CREATE TABLE Estoque (
  id_estoque INT  PRIMARY KEY NOT NULL,
  Estoque_Moda_Masculina  INT NOT NULL ,
  Estoque_Moda_Feminina INT NOT NULL,
  Estoque_Perfumes INT NOT NULL,
  Estoque_Acessórios INT NOT NULL
);

INSERT INTO Estoque ( id_estoque,Estoque_Moda_Masculina,Estoque_Moda_Feminina,Estoque_Perfumes,Estoque_Acessórios)VALUES
(1,61, 65, 443, 443);

select * from Estoque;


/* Fim */

/*Fazendo a soma entre as colunas de cada tabela*/
Alter table Perfumes
add column Estoque_TotalP int ;
UPDATE Perfumes SET Estoque_TotalP = (SELECT t.soma_unidades FROM (SELECT SUM(Unidades_P) AS soma_unidades FROM Perfumes) t)
WHERE id_perfumes = 1;

Alter table Acessórios
add column Estoque_TotalAC int ;
UPDATE Acessórios SET Estoque_TotalAC = (SELECT t.soma_unidades FROM (SELECT SUM(Unidades_A) AS soma_unidades FROM Acessórios) t)
WHERE id_Acessórios = 1;

Alter table Moda_Masculina
add column Estoque_TotalM int ;
UPDATE Moda_Masculina SET Estoque_TotalM = (SELECT t.soma_unidades FROM (SELECT SUM(Unidades_M) AS soma_unidades FROM Moda_Masculina) t)
WHERE id_mm = 1;

Alter table Moda_Feminina
add column Estoque_TotalF int ;
UPDATE Moda_Feminina SET Estoque_TotalF = (SELECT t.soma_unidades FROM(SELECT SUM(Unidades_F)  AS soma_unidades FROM Moda_Feminina) t)
WHERE id_mf = 1;
/*Fim*/


/*Inner Joins*/


SELECT * FROM Cliente
INNER JOIN Perfumes
on(Cliente.id_cliente = Perfumes.id_perfumes);

SELECT * FROM Cliente
INNER JOIN Moda_Masculina
on(Cliente.id_cliente = Moda_Masculina.id_mm);

SELECT * FROM Cliente
INNER JOIN Moda_Feminina
on(Cliente.id_cliente = Moda_Feminina.id_mf);

SELECT * FROM Venda
INNER JOIN Estoque
on(Venda.Id_Venda = Estoque.id_estoque);

SELECT * FROM Cliente
INNER JOIN   Venda
on(Cliente.id_cliente = Venda.Id_Venda);

/*Fim dos Inner Joins*/

/* MONSTER CITY INNER JOIN*/

select  Colares, Amadeirados
from Acessórios, Perfumes;

/* Combinações de perfumes e colares finalizada*/




