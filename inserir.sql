INSERT INTO Estado
VALUES
('Espírito Santo', 'ES')
('Bahia', 'BA')
('Minas Gerais', 'MG')


INSERT INTO Cliente (nome, CPF, Celular, EndLogradouro, EndNumero, EndCEP, Municipio_ID)
VALUES 
('Lívia', '12151216121', '2799998888', 'Rua das flores', '100', '29830000', 1),
('Paulo', '12151216121', '2799995555', 'Rua das Margaridas', '15', '29830000', 1),
('João', '12457896352', '2799997777', 'Rua das Girassol', '142', '29830000', 1);

INSERT INTO Municipio (nome, codIBGE, EstadoidEstado)
VALUES 
('Nova Venécia', 3203908, 1),
('São Mateus', 3204906, 1),
('Linhares', 3203205, 1);

INSERT INTO ContaReceber (Cliente_ID, FaturaVenda, DataConta, DataVencimento, Valor, Situacao)
VALUES 
(1, 7878, '2025-05-05', '2025-12-12', 256.50, '1'),
(2, NULL, '2025-02-05', '2025-06-12', 578.50, '2'),
(3, 7878, '2025-04-05', '2025-12-12', 241.50, '3');