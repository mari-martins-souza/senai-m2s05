-- exercicio 2 - DDL das Tabelas

CREATE TABLE Nutricionista (
    id_nutricionista serial PRIMARY KEY,
    crm varchar(50),
    nome varchar(50),
    especialidade varchar(128),
    tempo_experiencia int
);

CREATE TABLE Consulta (
	id_consulta serial PRIMARY KEY,
	id_nutricionista int,
	id_paciente int,
	data_consulta date,
	observacoes varchar(256),
	FOREIGN KEY (id_nutricionista) REFERENCES nutricionista (id_nutricionista),
    FOREIGN KEY (id_paciente) REFERENCES paciente (id_paciente)
);

CREATE TABLE Paciente (
	id_paciente serial PRIMARY KEY,
	nome varchar(128),
	data_nascimento date,
	cpf varchar(11) unique,
	telefone varchar(15),
	email varchar(50)
);

-- exercicio 3 - DML Insert das Tabelas

INSERT INTO Nutricionista (crm, nome, especialidade, tempo_experiencia) VALUES 
('CRM123', 'Dr. João Cabral', 'Nutrição Esportiva', 5)
RETURNING id_nutricionista;

INSERT INTO Nutricionista (crm, nome, especialidade, tempo_experiencia) VALUES 
('CRM456', 'Mariana Martins', 'Nutrição Infantil', 3)
RETURNING id_nutricionista;

INSERT INTO Nutricionista (crm, nome, especialidade, tempo_experiencia) VALUES 
('CRM789', 'Diego Campos', 'Nutrição para Hipertrofia', 8)
RETURNING id_nutricionista;

INSERT INTO Paciente (nome, data_nascimento, cpf, telefone, email) VALUES
('Carlos Silva', '1980-05-20', '12345678901', '11987654321', 'carlos.silva@email.com')
RETURNING id_paciente;

INSERT INTO Paciente (nome, data_nascimento, cpf, telefone, email) VALUES
('Ana Pereira', '1992-10-30', '23456789012', '21987654321', 'ana.pereira@email.com')
RETURNING id_paciente;

INSERT INTO Paciente (nome, data_nascimento, cpf, telefone, email) VALUES
('Pedro Costa', '1975-07-15', '34567890123', '31987654321', 'pedro.costa@email.com')
RETURNING id_paciente;

INSERT INTO Consulta (id_nutricionista, id_paciente, data_consulta, observacoes) VALUES 
(1, 3, '2024-06-20', 'Primeira consulta, paciente em bom estado de saúde'),
(2, 2, '2024-06-21', 'Paciente com necessidade de dieta para perda de peso'),
(3, 1, '2024-06-22', 'Paciente com necessidade de dieta para ganho de massa muscular');


