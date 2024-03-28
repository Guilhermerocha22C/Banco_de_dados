
INSERT INTO Clientes (Nome, Endereco, Email, Celular, Data_de_nascimento) VALUES
('Guilherme Rocha', 'Rua das Flores, 123', 'guilherme.rocha@example.com', '(11) 98765-4321', '2007-07-23'),
('Emerson Rocha', 'Avenida das Palmeiras, 456', 'emerson.rocha@example.com', '(11) 98765-1234', '1985-02-17'),
('Gustavo Santos', 'Rua dos Pinheiros, 789', 'gustavo.santos@example.com', '(31) 98765-5678', '2019-02-10'),
('Juliana Santos', 'Rua das Tulipas, 321', 'juliana.santos@example.com', '(41) 98765-8765', '1978-11-25'),
('José Possidonio', 'Avenida dos Girassóis, 654', 'jose.possidonio@example.com', '(51) 98765-4321', '1965-07-08'),
('Maria Rocha', 'Rua das Orquídeas, 987', 'maria.rocha@example.com', '(61) 98765-1234', '1987-12-03'),
('Flavio Ferreira', 'Avenida dos Jasmins, 147', 'lucas.ferreira@example.com', '(71) 98765-5678', '1980-02-18'),
('Lucas Lima', 'Rua das Margaridas, 258', 'lucas.lima@example.com', '(81) 98765-8765', '1993-06-30'),
('Maria Madalena', 'Avenida das Violetas, 369', 'maria.madalena@example.com', '(91) 98765-4321', '1975-10-12'),
('Rodrigo Vanderlon', 'Rua dos Cravos, 741', 'rodrigo.vanderlon@example.com', '(01) 98765-1234', '1989-04-05');
select * from clientes;

INSERT INTO Produtos (Nome, Preco, Descricao, Quantidade_em_estoque) VALUES
('Camiseta Masculina', 29.90, 'Camiseta de algodão para homens', 100),
('Camiseta Feminina', 29.90, 'Camiseta de algodão para mulheres', 80),
('Calça Jeans', 79.90, 'Calça jeans masculina', 50),
('Vestido Floral', 99.90, 'Vestido feminino estampado', 60),
('Tênis Esportivo', 129.90, 'Tênis para corrida', 30),
('Bolsa de Couro', 149.90, 'Bolsa feminina em couro', 40),
('Relógio Analógico', 199.90, 'Relógio de pulso analógico', 20),
('Óculos de Sol', 79.90, 'Óculos de sol com proteção UV', 70),
('Câmera Fotográfica', 499.90, 'Câmera digital compacta', 10),
('Smartphone', 999.90, 'Smartphone Android', 15);
select * from produtos;


INSERT INTO Pedidos (ID_cliente, Data_de_compra, Valor_total, Data_estimada_de_entrega) VALUES
(3, '2024-03-20', 149.90, '2024-03-28'),
(7, '2024-03-21', 228.70, '2024-03-29'),
(2, '2024-03-22', 379.60, '2024-03-30'),
(5, '2024-03-23', 259.80, '2024-03-31'),
(10, '2024-03-24', 599.80, '2024-04-01'),
(1, '2024-03-25', 149.90, '2024-04-02'),
(8, '2024-03-26', 259.90, '2024-04-03'),
(4, '2024-03-27', 499.90, '2024-04-04'),
(9, '2024-03-28', 159.80, '2024-04-05'),
(6, '2024-03-29', 449.90, '2024-04-06');
select * from pedidos;


INSERT INTO Itens_pedido (ID_pedido, ID_produto, Quantidade, Valor_unitario, Valor_total) VALUES
(1, 2, 1, 29.90, 29.90),
(2, 4, 2, 79.90, 159.80),
(3, 7, 3, 49.90, 149.70),
(4, 10, 1, 999.90, 999.90),
(5, 5, 1, 129.90, 129.90),
(6, 1, 1, 29.90, 29.90),
(7, 9, 2, 79.90, 159.80),
(8, 3, 1, 79.90, 79.90),
(9, 6, 1, 149.90, 149.90),
(10, 8, 2, 79.90, 159.80);
select * from itens_pedido;


UPDATE Clientes
SET Email = 'guilherme.rocha_novo@example.com'
WHERE ID_cliente = 3;


UPDATE Produtos
SET Preco = 139.90
WHERE ID_produto = 5;


UPDATE Pedidos
SET Data_estimada_de_entrega = '2024-04-03'
WHERE ID_pedido = 2;

 
DELETE FROM Itens_pedido
WHERE ID_pedido = 1;


DELETE FROM Pedidos
WHERE ID_pedido = 5;