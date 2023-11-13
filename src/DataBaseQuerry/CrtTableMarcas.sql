USE carros;

CREATE TABLE marcas (
	marca_id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (marca_id)
);

ALTER TABLE marcas ADD origem VARCHAR(100) ;


