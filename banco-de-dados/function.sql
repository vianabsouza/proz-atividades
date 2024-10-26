CREATE OR REPLACE FUNCTION soma_cliente_data(data_cadastro_parametro DATE)
  RETURNS INT AS $$
DECLARE
  total_clientes INT;
BEGIN
  SELECT COUNT(*) INTO total_clientes
  FROM clientes
  WHERE data_cadastro = data_cadastro_parametro;
  RETURN total_clientes;
END
$$ LANGUAGE PLPGSQL;

SELECT soma_cliente_data('2024-10-25');