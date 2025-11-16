CREATE VIEW ContasNaoPagas AS
SELECT 
    cr.idContaReceber AS ContasId,
    c.nome AS ClienteNome,
    c.CPF AS ClienteCPF, 
    cr.DataVencimento, 
    cr.Valor
FROM contareceber cridCliente
JOIN Cliente c ON cr.Cliente_ID = c.idCliente
WHERE cr.Situacao = '1';

SELECT * FROM loja.contasNaoPagas;