CREATE DATABASE farmacia;

use farmacia;

CREATE TABLE funcionarios(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE reposicao(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    id_funcionario INT NOT NULL,
    nome_med VARCHAR(255) NOT NULL, 
    quantidade_med INT NOT NULL,
    urgencia ENUM('baixa', 'média', 'alta') NOT NULL,
    data_solicita DATE NOT NULL,
    status_pedido ENUM('solicitado', 'em separação', 'recebido') DEFAULT 'solicitado',
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);