create database sistema_vendas_22c;
use sistema_vendas_22c;

CREATE TABLE Clientes (
    ID_cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    Email VARCHAR(100),
    Celular VARCHAR(20),
    Data_de_nascimento DATE
);

CREATE TABLE Produtos (
    ID_produto INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10, 2),
    Descricao TEXT,
    Quantidade_em_estoque INT
);

CREATE TABLE Pedidos (
    ID_pedido INT AUTO_INCREMENT PRIMARY KEY,
    ID_cliente INT,
    Data_de_compra DATE,
    Valor_total DECIMAL(10, 2),
    Data_estimada_de_entrega DATE,
    FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente)
);

CREATE TABLE Itens_pedido (
    ID_item INT AUTO_INCREMENT PRIMARY KEY,
    ID_pedido INT,
    ID_produto INT,
    Quantidade INT,
    Valor_unitario DECIMAL(10, 2),
    Valor_total DECIMAL(10, 2),
    FOREIGN KEY (ID_pedido) REFERENCES Pedidos(ID_pedido),
    FOREIGN KEY (ID_produto) REFERENCES Produtos(ID_produto)
);