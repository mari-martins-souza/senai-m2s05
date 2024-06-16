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