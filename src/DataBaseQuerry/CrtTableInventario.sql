USE carros;

CREATE TABLE inventario(
	modelo_id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    transmissao VARCHAR(100) NOT NULL,
    combustivel VARCHAR(100) NOT NULL,
    tracao VARCHAR(100) NOT NULL,
    marca_id INT NOT NULL,
    PRIMARY KEY (modelo_id),
    FOREIGN KEY (marca_id) REFERENCES marcas(marca_id)
);

