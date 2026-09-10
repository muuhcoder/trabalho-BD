CREATE DATABASE IF NOT EXISTS clinica_veterinaria;
USE clinica_veterinaria;

CREATE TABLE Cliente (
    CPF VARCHAR(11) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    PRIMARY KEY (CPF)
);

CREATE TABLE Animal (
    Codigo INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Ano_Nascimento YEAR NOT NULL,
    Raca VARCHAR(50) NOT NULL,
    CPF_Cliente VARCHAR(11) NOT NULL,
    PRIMARY KEY (Codigo),
    CONSTRAINT FK_Animal_Cliente
        FOREIGN KEY (CPF_Cliente) REFERENCES Cliente(CPF)
);

CREATE TABLE Veterinario (
    CRMV VARCHAR(20) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Data_Admissao DATE NOT NULL,
    Salario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (CRMV)
);

CREATE TABLE Consulta (
    Codigo_Animal INT NOT NULL,
    CRMV_Veterinario VARCHAR(20) NOT NULL,
    Data DATE NOT NULL,
    Hora TIME NOT NULL,
    Motivo VARCHAR(255) NOT NULL,
    PRIMARY KEY (Codigo_Animal, CRMV_Veterinario, Data),
    CONSTRAINT FK_Consulta_Animal
        FOREIGN KEY (Codigo_Animal) REFERENCES Animal(Codigo),
    CONSTRAINT FK_Consulta_Veterinario
        FOREIGN KEY (CRMV_Veterinario) REFERENCES Veterinario(CRMV)
);
