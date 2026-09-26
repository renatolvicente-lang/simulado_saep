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

INSERT INTO funcionarios VALUES 
('ClRasta', 'clrasta@gmail.com'), 
('Daniel', 'daniel@gmail.com'),
('Renato', 'renato@gmail.com');

INSERT INTO reposicao VALUES 
('minoxidil', 2, 'baixa', '26-10-2026', 'solicitado'),
('paroxitona', 2, 'baixa', '24-10-2026', 'em separação'),
('paracetamal', 6, 'média', '28-10-2026', 'recebido'),
('novalgina', 8, 'alta', '26-10-2026', 'recebido'),
('gugupro', 7, 'baixa', '26-10-2026', 'solicitado');
