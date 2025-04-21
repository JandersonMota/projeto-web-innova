-- Inserção de registros na tabela de usuários
INSERT INTO usuarios (nome, email, ativo) VALUES
('João Silva', 'joao.silva@example.com', TRUE),
('Maria Oliveira', 'maria.oliveira@example.com', TRUE),
('Carlos Almeida', 'carlos.almeida@example.com', FALSE),
('Ana Costa', 'ana.costa@example.com', TRUE),
('Lucas Pereira', 'lucas.pereira@example.com', FALSE);

-- Inserção de registros na tabela de telefones
INSERT INTO telefones (id_usuario, numero, tipo) VALUES
(1, '+5511987654321', 'phone'),
(2, '+5511976543210', 'phone'),
(3, '+5511965432109', 'whatsapp'),
(4, '+5511954321098', 'telegram'),
(5, '+5511943210987', 'phone');