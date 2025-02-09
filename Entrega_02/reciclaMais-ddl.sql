-- script para criação das tabelas

CREATE TABLE catadores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
  	endereco JSON NOT NULL,
    senha TEXT NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE centros_reciclagem (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) UNIQUE NOT NULL,
    contatos VARCHAR(100),
  	endereco JSON NOT NULL,
    senha TEXT NOT NULL,
  	horario_abre TIME NOT NULL,
  	horario_fecha TIME NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE coletas (
    id SERIAL PRIMARY KEY,
    id_catador INT NOT NULL,
    id_centro INT NOT NULL,
    data_coleta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) DEFAULT 'pendente',
    FOREIGN KEY (id_catador) REFERENCES catadores(id),
    FOREIGN KEY (id_centro) REFERENCES centros_reciclagem(id)
);

CREATE TABLE materiais (
    id SERIAL PRIMARY KEY,
    id_centro INT NOT NULL,
    descricao TEXT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    pontos_por_kg INT NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_centro) REFERENCES centros_reciclagem(id)
);

CREATE TABLE materiais_coleta (
    id SERIAL PRIMARY KEY,
    id_coleta INT NOT NULL,
    id_material INT NOT NULL,
    peso_kg DECIMAL(10,2),
    FOREIGN KEY (id_coleta) REFERENCES coletas(id),
    FOREIGN KEY (id_material) REFERENCES materiais(id)
);

CREATE TABLE recompensas (
    id SERIAL PRIMARY KEY,
    id_catador INT NOT NULL,
    id_coleta INT NOT NULL,
    descricao TEXT,
    pontos_acumulados INT NOT NULL,
    status VARCHAR(20) DEFAULT 'disponivel',
    FOREIGN KEY (id_catador) REFERENCES catadores(id),
    FOREIGN KEY (id_coleta) REFERENCES coletas(id)
);
