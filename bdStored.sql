CREATE DATABASE bdStored
USE bdStored

CREATE TABLE tbCategoriaProduto(
	codCategoriaProduto INT PRIMARY KEY IDENTITY(1,1)
	, nomeCategoriaProduto VARCHAR(40) NOT NULL
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY(1,1)
	, nomeProduto VARCHAR(40) NOT NULL
	, precoKiloProduto SMALLMONEY
	, codCategoriaProduto INT FOREIGN KEY REFERENCES tbCategoriaProduto(codCategoriaProduto)
)

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY(1,1)
	, nomeCliente VARCHAR(50) NOT NULL
	, dataNascimentoCliente SMALLDATETIME
	, ruaCliente VARCHAR(50) NOT NULL
	, numCasaCliente VARCHAR(10)
	, cepCliente VARCHAR(30) NOT NULL
	, bairroCliente VARCHAR(40) NOT NULL
	, cidadeCliente VARCHAR(40) NOT NULL
	, estadoCliente VARCHAR(40) not NULL
	, cpfCliente VARCHAR(20) NOT NULL
	, sexoCliente VARCHAR(15) NOT NULL
)

CREATE TABLE tbEncomenda(
	codEncomenda INT PRIMARY KEY IDENTITY(1,1)
	, dataEncomenda SMALLDATETIME
	, codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
	, valorTotalEncomenda SMALLMONEY
	, dataEntregaEncomenda SMALLDATETIME
)

CREATE TABLE tbItensEncomenda(
	codItensEncomenda INT PRIMARY KEY IDENTITY(1,1)
	, codEncomenda INT FOREIGN KEY REFERENCES tbEncomenda(codEncomenda)
	, codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
	, quantidadeKilo VARCHAR(20) NOT NULL
	, subTotal SMALLMONEY
)