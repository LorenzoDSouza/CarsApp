USE carros;

CREATE TABLE clientes(
	cliente_id INT NOT NULL AUTO_INCREMENT,
    primeiro_nome VARCHAR(100) NOT NULL,
    ultimo_nome VARCHAR(100) NOT NULL,
    
    PRIMARY KEY(cliente_id)
    
);

INSERT INTO clientes(primeiro_nome, ultimo_nome)
VALUE
	('Lorenzo', 'De Souza'),
	('Pedro', 'Engel'),
    ('Arthur', 'Kellermman'),
	('Andre', 'De Souza'),
    ('Andrea', 'Kirst');
    
INSERT INTO marcas(nome, origem)
VALUE
	('Volkswaggen', 'Alemanha'),
	('BMW', 'Alemanha'),
    ('Ferrari', 'Italia'),
	('Honda', 'Japao'),
    ('Toyota', 'Japao');
    
INSERT INTO inventario(nome, transmissao, combustivel, tracao, marca_id)
VALUE
	('Golf GTI', 'Automatica', 'Gasolina', '4x2 Dianteira', 1),
	('328i', 'Automatica', 'Gasolina', '4x2 Dianteira', 2),
    ('812', 'Manual', 'Gasolina', '4x2 Traseira', 3),
	('Civic LXS', 'Automatica', 'Gasolina', '4x2 Dianteira', 4),
    ('Supra', 'Manual', 'Gasolina', '4x2 Traseira', 5);
    
ALTER TABLE inventario
ADD COLUMN hp INT NOT NULL;