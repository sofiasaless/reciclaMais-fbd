-- script para povoamento do banco de dados

-- CATADORES
INSERT INTO catadores (nome, cpf, telefone, email, endereco, senha) VALUES 
('João Silva', '123.456.789-00', '(88) 98765-4321', 'joao.silva@email.com', '{"latitude": -4.9714, "longitude": -39.0153}', 'senhaSegura123'),
('Maria Oliveira', '987.654.321-00', '(88) 91234-5678', 'maria.oliveira@email.com', '{"latitude": -4.9785, "longitude": -39.0167}', 'senhaForte456'),
('Carlos Souza', '456.789.123-00', '(85) 92345-6789', 'carlos.souza@email.com', '{"latitude": -4.2625, "longitude": -38.9321}', '123456789'),
('Ana Costa', '321.654.987-00', '(85) 93456-7890', 'ana.costa@email.com', '{"latitude": -4.2678, "longitude": -38.9305}', 'minhaSenha987'),
('Ricardo Pereira', '789.123.456-00', '(88) 94567-8901', 'ricardo.pereira@email.com', '{"latitude": -4.9756, "longitude": -39.0201}', '1234Segura!'),
('Fernanda Lima', '111.222.333-44', '(88) 91111-2222', 'fernanda.lima@email.com', '{"latitude": -4.9623, "longitude": -39.0111}', 'senhaSegura321'),
('Roberto Nunes', '555.666.777-88', '(85) 92222-3333', 'roberto.nunes@email.com', '{"latitude": -4.9512, "longitude": -39.0189}', 'senhaForte789'),
('Larissa Almeida', '999.888.777-66', '(88) 93333-4444', 'larissa.almeida@email.com', '{"latitude": -4.9821, "longitude": -39.0245}', 'minhaSenha654'),
('Pedro Santos', '333.444.555-66', '(85) 94444-5555', 'pedro.santos@email.com', '{"latitude": -4.9900, "longitude": -39.0021}', 'pass98765'),
('Juliana Souza', '777.888.999-00', '(88) 95555-6666', 'juliana.souza@email.com', '{"latitude": -4.9678, "longitude": -39.0199}', 'securePass123');

-- CENTROS DE RECICLAGEM
INSERT INTO centros_reciclagem (nome, cnpj, contatos, endereco, senha, horario_abre, horario_fecha) VALUES 
('Recicla Quixadá', '12.345.678/0001-90','{"telefone": "(88) 98765-4321", "email": "contato@reciclaquixada.com"}','{"latitude": -4.9721, "longitude": -39.0159}','reciclaSenha123', '08:00', '18:00'),
('Ecoponto Guaramiranga', '98.765.432/0001-50','{"telefone": "(85) 92345-6789"}','{"latitude": -4.2650, "longitude": -38.9310}','ecoPonto456', '07:30', '17:30'),
('Verde Reciclagem', '56.789.123/0001-75','{"email": "contato@verdereciclagem.com"}','{"latitude": -4.9763, "longitude": -39.0187}','verdeSenha789', '09:00', '19:00'),
('EcoVida Fortaleza', '45.678.901/0001-11', '{"telefone": "(85) 91111-2222", "email": "contato@ecovidafortaleza.com"}', '{"latitude": -3.7261, "longitude": -38.5267}', 'ecovidaSenha321', '08:30', '17:30'),
('ReCiclo Maracanaú', '67.890.123/0001-22', '{"telefone": "(85) 92222-3333", "email": "contato@reciclomaracanau.com"}', '{"latitude": -3.8731, "longitude": -38.6253}', 'recicloPass456', '07:00', '18:00'),
('Sustentare Sobral', '78.901.234/0001-33', '{"telefone": "(88) 93333-4444", "email": "contato@sustentaresobral.com"}', '{"latitude": -3.6890, "longitude": -40.3498}', 'sustentare789', '09:00', '19:30'),
('RecicleBem Juazeiro', '89.012.345/0001-44', '{"telefone": "(88) 94444-5555"}', '{"latitude": -7.2130, "longitude": -39.3155}', 'recicleBemPass', '06:30', '16:00'),
('VerdePonto Iguatu', '90.123.456/0001-55', '{"telefone": "(88) 95555-6666"}', '{"latitude": -6.3597, "longitude": -39.2933}', 'verdePonto123', '08:00', '17:00');

-- MATERIAIS QUE OS CENTROS DE RECICLAGEM CADASTRAM E RECEBEM EM SUAS UNIDADES
INSERT INTO materiais (id_centro, descricao, tipo, pontos_por_kg) VALUES 
(1, 'Papel branco, jornais, revistas e papelão', 'Papel', 10),
(1, 'Garrafas PET, tampas e embalagens plásticas', 'Plástico', 15),
(1, 'Latas de alumínio, cobre e ferro', 'Metal', 20),
(2, 'Vidros de garrafas, potes e frascos', 'Vidro', 12),
(2, 'Caixas de leite e suco (Tetra Pak)', 'Embalagem longa vida', 18),
(2, 'Sucata de ferro e aço', 'Metal', 25),
(3, 'Restos de madeira e serragem', 'Madeira', 8),
(3, 'Pilhas e baterias usadas', 'Eletrônicos', 30),
(3, 'Óleo de cozinha usado', 'Óleo', 22),
(4, 'Plástico rígido e garrafas de refrigerante', 'Plástico', 14),
(4, 'Sucata de ferro e latas de alumínio', 'Metal', 18),
(5, 'Resíduos de papel e papelão', 'Papel', 9),
(5, 'Garrafas de vidro de bebidas', 'Vidro', 13),
(6, 'Pilhas, baterias e eletrônicos velhos', 'Eletrônicos', 35),
(6, 'Óleo de cozinha usado', 'Óleo', 22),
(7, 'Madeira reciclável e serragem', 'Madeira', 7);
 
 -- COLETAS DE CATADORES PARA CENTROS DE RECICLAGEM
INSERT INTO coletas (id_catador, id_centro) VALUES
(1, 1),
(1, 1),
(4, 2),
(2, 3),
(3, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 1),
(9, 2),
(10, 3);

-- MATERIAIS QUE VIERAM EM COLETAS DOS CATADORES
INSERT INTO materiais_coleta (id_coleta, id_material, peso_kg) VALUES 
-- coleta 1 (catador 1 no centro 1 - Recicla Quixadá)
(1, 1, 5.50), -- 5.5 kg de Papel
(1, 2, 3.20), -- 3.2 kg de Plástico

-- coleta 2 (catador 1 no centro 1 - Recicla Quixadá)
(2, 3, 4.75), -- 4.75 kg de Metal

-- coleta 3 (catador 4 no centro 2 - Ecoponto Guaramiranga)
(3, 4, 6.30), -- 6.3 kg de Vidro
(3, 5, 2.80), -- 2.8 kg de Embalagem longa vida

-- outras coletas
(4, 6, 5.00), 
(4, 7, 2.50), 
(5, 8, 4.30), 
(6, 9, 3.10), 
(7, 10, 6.80), 
(8, 11, 7.25), 
(9, 12, 4.60), 
(10, 13, 5.90);

-- RECOMPENSAS GERADAS A PARTIR DOS MATERIAIS RELACIONADOS A UMA COLETA
INSERT INTO recompensas (id_catador, id_coleta, descricao, pontos_acumulados) VALUES 
-- coleta 1 (catador 1 no centro 1 - Recicla Quixadá)
(1, 1, 'Recompensa por reciclagem de papel e plástico', 
    ROUND(5.50 * 10 + 3.20 * 15)),  -- (5.5 kg * 10 pontos) + (3.2 kg * 15 pontos)

-- coleta 2 (catador 1 no centro 1 - Recicla Quixadá)
(2, 2, 'Recompensa por reciclagem de metal', 
    ROUND(4.75 * 20)),  -- (4.75 kg * 20 pontos)

-- coleta 3 (catador 4 no centro 2 - Ecoponto Guaramiranga)
(4, 3, 'Recompensa por reciclagem de vidro e embalagem longa vida', 
    ROUND(6.30 * 12 + 2.80 * 18)), -- (6.3 kg * 12 pontos) + (2.8 kg * 18 pontos)
(2, 4, 'Recompensa por reciclagem de plástico e metal', ROUND(5.00 * 14 + 2.50 * 18)),
(3, 5, 'Recompensa por reciclagem de papel e vidro', ROUND(4.30 * 9 + 3.10 * 13)),
(5, 6, 'Recompensa por reciclagem de eletrônicos e óleo', ROUND(6.80 * 35 + 7.25 * 22)),
(6, 7, 'Recompensa por reciclagem de madeira', ROUND(4.60 * 7)),
(7, 8, 'Recompensa por reciclagem de materiais diversos', ROUND(5.90 * 10 + 6.00 * 12));