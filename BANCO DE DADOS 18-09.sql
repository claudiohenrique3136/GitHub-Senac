CREATE DATABASE db_loja
use db_loja


-->TABELAS<--
--tbl_cliente-- OK
--tbl_estoque-- OK
--tbl_pedidos-- OK
--tbl_itens_pedido--
--tbl_produtos--
--tbl_devolução--
--tbl_categoria-- OK
--tbl_endereço--

-->DESCRITIVO<--
------------------------
--tbl_cliente

--id INT IDENTITY PRIMARY KEY
--nome VARCHAR (250)
--email VARCHAR(100
--telefone VARCHAR(50)

CREATE TABLE tbl_cliente
(
id INT IDENTITY PRIMARY KEY,
nome VARCHAR (250),
email VARCHAR(100,
telefone VARCHAR(50)
)

------------------------
--tbl_estoque

--id INT IDENTITY PRIMARY KEY
--id_produto INT FOREIGN KEY
--quantidade INT

CREATE TABLE tbl_estoque
(
id INT IDENTITY PRIMARY KEY,
id_produto INT,
quantidade INT,
FOREIGN KEY (id_produto) REFERENCES tbl_produto(id)
)

------------------------
--tbl_pedidos

--id INT IDENTITY PRIMARY KEY
--id_cliente INT
--data_pedido DATA
--status_pedido DATE
--status_pedido VARCHAR(20)
--valor_total DECIMAL(10,2)

CREATE TABLE tbl_pedidos
(
id INT IDENTITY PRIMARY KEY,
id_cliente INT,
data_pedido DATE,
status_pedido VARCHAR(20),
valor_total DECIMAL(10,2)
)
-------------------------
--tbl_itens_pedido

--id INT IDENTITY PRIMARY KEY
--id_pedido INT FOREIGN KEY
--id_produto INT ROREIGN KEY
--quantidade INT
--preco_unitario DECIMAL (10,2)

CREATE TABLE tbl_itens_pedido
(
id INT IDENTITY PRIMARY KEY,
id_pedido INT FOREIGN KEY,
id_produto INT FOREIGN KEY,
quantidade INT,
preco_unitario DECIMAL (10,2),
FOREIGN KEY (id_pedido) REFERENCES tbl_pedidos
)

----------------------------
--tbl_produtos

--id INT IDENTITY PRIMARY KEY
--nome VARCHAR(255)
--id_categoria INT FOREING KEY
--cor VARCHAR(50)
--tamanho VARCHAR(20)
--preco DECIMAL(10,2)

CREATE TABLE tbl_produtos
(
id INT IDENTITY PRIMARY KEY,
nome VARCHAR(255),
id_categoria INT,
cor VARCHAR(50),
tamanho VARCHAR(20),
preco DECIMAL(10,2),
FOREIGN KEY id_categoria REFERENCES tbl_categoria(

)

------------------------------
--tbl_devolucao

--id INT IDENTITY PRIMARY KEY
--id_pedido INT FOREGIN KEY
--data_solicitacao
--status VARCHAR(20)
--data_conclusao
--valor DECIMAL(10,2)

CREATE TABLE tbl_devolucao
(
id INT IDENTITY PRIMARY KEY,
id_pedido INT FOREGIN KEY,
data_solicitacao,
status VARCHAR(20),
data_conclusao,
valor DECIMAL(10,2)
)

-----------------------------
--tbl_categoria

--id INT IDENTITY PRIMARY KEY
--nome_categoria VARCHAR(50)

CREATE TABLE tbl_categoria
(
id INT IDENTITY PRIMARY KEY,
nome_categoria VARCHAR(50)
)

-----------------------------
-- tbl_endereço
 
-- id INT IDENTITY PRIMARY KEY
-- id_cliente INT FOREIGN KEY
-- cep VARCHAR (20)
-- lougradouro VARCHAR (100)
-- numero INT
-- cidade VARCHAR (100)
-- estado VARCHAR (50)
-- pais VARCHAR (50)
-- complemento VARCHAR (50)

CREATE TABLE tbl_endereço
(
id INT IDENTITY PRIMARY KEY,
id_cliente INT FOREIGN KEY,
cep VARCHAR (20),
lougradouro VARCHAR (100),
numero INT,
cidade VARCHAR (100),
estado VARCHAR (50),
pais VARCHAR (50),
complemento VARCHAR (50)

)
 
-- ###############################


--tbl_itens_pedido
 
--id INT IDENTITY PRIMARY KEY
--id_pedido INT FOREIGN KEY
--id_produto INT FOREIGN KEY
--quantidade INT
--preco_unitario DECIMAL(10,2)
 
CREATE TABLE tbl_itens_pedido
(
id INT IDENTITY PRIMARY KEY,
id_pedido INT,
id_produto INT,
quantidade INT,
preco_unitario DECIMAL(10,2),
FOREIGN KEY (id_pedido) REFERENCES tbl_pedidos(id),
FOREIGN KEY (id_produto) REFERENCES tbl_produto(id)
)
 
---------------------------------
--tbl_produto
 
--id INT IDENTITY PRIMARY KEY
--nome VARCHAR(255)
--id_categoria INT FOREIGN KEY
--cor VARCHAR(50)
--tamanho VARCHAR(20)
--preco DECIMAL(10,2)
 
CREATE TABLE tbl_produto
( 
id INT IDENTITY PRIMARY KEY,
nome VARCHAR(255),
id_categoria INT,
cor VARCHAR(50),
tamanho VARCHAR(20),
preco DECIMAL(10,2),
FOREIGN KEY (id_categoria) REFERENCES tbl_categoria (id)
)
 
 
---------------------------------
--tbl_devolucao
 
--id INT IDENTITY PRIMARY KEY 
--id_pedido INT FOREIGN KEY
--data_solicitacao DATA 
--status VARCHAR(20)
--data_conclusão DATE
--valor DECIMAL(10,2)
 
CREATE TABLE tbl_devolucao 
(
id INT IDENTITY,  
id_pedido INT,
data_solicitacao DATE,
status VARCHAR(20),
data_conclusão DATE,
valor DECIMAL(10,2),
FOREIGN KEY (id_pedido) REFERENCES tbl_pedidos(id)
)
------------------------- 
--tbl_categoria
 
-- INT IDENTITY PRIMARY KEY 
-- nome_categoria VARCHAR (50)
 
CREATE TABLE tbl_categoria 
(
id INT IDENTITY PRIMARY KEY, 
nome_categoria VARCHAR (50) 
)
 
--------------------------
--tbl_endereco 
--id INT IDENTITY PRIMARY KEY 
--Id_cliente INT FOREIGN KEY 
--cep VARCHAR (100)
--numero INT
--cidade VARCHAR(100)
--estado VARCHAR(50)
--pais VARCHAR(50)
 
CREATE TABLE tbl_endereco 
(
id INT IDENTITY,
id_cliente INT,
cep VARCHAR(100),
numero INT,
cidade VARCHAR(100),
estado VARCHAR(50),
pais VARCHAR(50),
FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id)
)
------------------------
 
--complemento VARCHAR 