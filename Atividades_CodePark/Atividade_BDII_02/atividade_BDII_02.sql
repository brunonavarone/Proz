
CREATE DATABASE meu_banco_de_dados;



CREATE TABLE clientes (
  cliente_id SERIAL PRIMARY KEY,
  nome VARCHAR(50),
  email VARCHAR(50)
);


CREATE TABLE historico (
  historico_id SERIAL PRIMARY KEY,
  acao VARCHAR(50),
  detalhes VARCHAR(100),
  data_registro TIMESTAMP DEFAULT NOW(),
  cliente_id INT,
  FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

CREATE OR REPLACE FUNCTION registrar_historico()
RETURNS TRIGGER AS $$
BEGIN
  IF (TG_OP = 'INSERT') THEN
    INSERT INTO historico (acao, detalhes, cliente_id)
    VALUES ('Inserção', 'Novo cliente inserido: ' || NEW.nome, NEW.cliente_id);
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trigger_registro_historico
AFTER INSERT ON clientes
FOR EACH ROW
EXECUTE FUNCTION registrar_historico();


INSERT INTO clientes (nome, email)
VALUES ('João', 'joao@email.com'),
       ('Maria', 'maria@email.com');
