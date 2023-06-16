CREATE DATABASE minha_base_de_dados;

CREATE TABLE clientes (
  cliente_id SERIAL PRIMARY KEY,
  nome VARCHAR(50),
  email VARCHAR(50)
);

CREATE TABLE pedidos (
  pedido_id SERIAL PRIMARY KEY,
  cliente_id INT,
  produto VARCHAR(50),
  quantidade INT,
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

CREATE TABLE enderecos (
  endereco_id SERIAL PRIMARY KEY,
  cliente_id INT,
  rua VARCHAR(50),
  cidade VARCHAR(50),
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

INSERT INTO clientes (nome, email)
VALUES ('João', 'joao@email.com'),
       ('Maria', 'maria@email.com'),('Bruno', 'brunohenrique.travessa@gmail.com');

INSERT INTO pedidos (cliente_id, produto, quantidade)
VALUES (1, 'Camiseta', 2),
       (2, 'Calça', 1),
       (1, 'Boné', 3);

INSERT INTO enderecos (cliente_id, rua, cidade)
VALUES (1, 'Rua A', 'Cidade A'),
       (2, 'Rua B', 'Cidade B'),
       (1, 'Rua C', 'Cidade C');


SELECT clientes.nome, pedidos.produto, pedidos.quantidade
FROM clientes
JOIN pedidos ON clientes.cliente_id = pedidos.cliente_id;

SELECT clientes.nome, enderecos.rua, enderecos.cidade
FROM clientes
JOIN enderecos ON clientes.cliente_id = enderecos.cliente_id;

