CREATE TABLE clientes_cadastrados (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100),
  data_cadastro DATE
);

INSERT INTO clientes_cadastrados (nome, email, data_cadastro) VALUES
  ('João', 'joao@example.com', '2023-06-16'),
  ('Maria', 'maria@example.com', '2023-06-16'),
  ('Pedro', 'pedro@example.com', '2023-06-16'),
  ('Ana', 'ana@example.com', '2023-06-15'),
  ('Lucas', 'lucas@example.com', '2023-06-15');

CREATE OR REPLACE FUNCTION somar_clientes_cadastrados(data_cadastro_param DATE)
RETURNS INTEGER AS $$
DECLARE
  total_clientes INTEGER;
BEGIN
  SELECT COUNT(*) INTO total_clientes
  FROM clientes_cadastrados
  WHERE data_cadastro = data_cadastro_param;

  RETURN total_clientes;
END;
$$ LANGUAGE plpgsql;

SELECT somar_clientes_cadastrados('2023-06-16') AS total_clientes_cadastrados;
