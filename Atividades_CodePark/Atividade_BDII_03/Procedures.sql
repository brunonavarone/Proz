CREATE TABLE TabelaCompras (
    ID SERIAL PRIMARY KEY,
    Produto VARCHAR(100),
    DataCompra DATE
);

INSERT INTO TabelaCompras (Produto, DataCompra)
VALUES
    ('Produto A', '2023-06-19'),
    ('Produto B', '2023-06-19'),
    ('Produto C', '2023-06-18'),
    ('Produto D', '2023-06-18'),
    ('Produto E', '2023-06-18'),
    ('Produto F', '2023-06-17'),
    ('Produto G', '2023-06-17');

    
CREATE OR REPLACE PROCEDURE LevantamentoDiarioProdutos()
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT DATE(DataCompra) AS Data, COUNT(*) AS Quantidade
    FROM TabelaCompras
    GROUP BY DATE(DataCompra);
END;
$$;

   
