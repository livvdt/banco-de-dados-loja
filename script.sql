CREATE DATABASE IF NOT EXISTS Loja;
USE Loja;

CREATE TABLE Estado (
    idEstado INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    uf CHAR(2) UNIQUE NOT NULL,
    PRIMARY KEY (idEstado)
);


CREATE TABLE Municipio (
    idMunicipio INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    codIBGE INT NOT NULL,
    EstadoidEstado INT NOT NULL,
    PRIMARY KEY (idMunicipio),
    CONSTRAINT fk_MunicipioEstado
    FOREIGN KEY (EstadoidEstado)
    REFERENCES Estado (idEstado)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Cliente (
    idCliente INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Celular CHAR(11),
    EndLogradouro VARCHAR(100) NOT NULL,
    EndNumero VARCHAR(10) NOT NULL,
    EndCEP CHAR(8),
    Municipio_ID INT NOT NULL,
    PRIMARY KEY (idCliente),
    CONSTRAINT fk_Cliente_Municipio
    FOREIGN KEY (Municipio_ID)
    REFERENCES Municipio (idMunicipio)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE ContaReceber (
    idContaReceber INT NOT NULL AUTO_INCREMENT,
    Cliente_ID INT,
    FaturaVenda INT,
    DataConta DATE NOT NULL,
    DataVencimento DATE NOT NULL,
    Valor DECIMAL(18,2) NOT NULL,
    Situacao ENUM('1','2','3'),
    PRIMARY KEY (idContaReceber),
    CONSTRAINT fk_ContaReceber_Cliente
    FOREIGN KEY (Cliente_ID)
    REFERENCES Cliente (idCliente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



