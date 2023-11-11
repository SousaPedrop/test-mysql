SELECT CONCAT_WS(' ', c.nome, c.sobrenome) "Clientes", cs.cor "Cor de suas casas", b.nome "Seus bairros", cr.modelo "Seus carros"
	FROM cliente c
    	INNER JOIN casa cs ON (c.id_cliente = cs.fk_cliente)
        INNER JOIN bairro b ON (cs.fk_bairro = b.id_bairro)
        LEFT JOIN carro cr ON (c.id_cliente = cr.fk_cliente)
	ORDER BY c.id_cliente
