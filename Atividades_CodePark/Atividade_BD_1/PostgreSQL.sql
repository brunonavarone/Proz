CREATE DATABASE ESCOLA;
USE ESCOLA;

CREATE TABLE ALUNO (
    ID INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50),
    endereco VARCHAR(100)
);

INSERT INTO ALUNO (ID, nome, email, endereco)
VALUES 
    (1, 'João', 'joao@example.com', 'Rua A, 123'),
    (2, 'Maria', 'maria@example.com', 'Avenida B, 456'),
    (3, 'Pedro', 'pedro@example.com', 'Travessa C, 789'),
    (4, 'Ana', 'ana@example.com', 'Rua D, 456'),
    (5, 'Carlos', 'carlos@example.com', 'Avenida E, 789');

SELECT * from aluno