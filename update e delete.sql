-- exercicio 7 - DML update / delete

UPDATE Nutricionista SET nome = 'João Cabral Santos' WHERE id_nutricionista = 1;
UPDATE Paciente SET nome = 'Carlos Silva Gomes' WHERE id_paciente = 1;
UPDATE Consulta SET observacoes = 'Observações atualizadas' WHERE id_consulta = 1;

DELETE FROM Consulta WHERE id_consulta = 1;
DELETE FROM Paciente WHERE id_paciente = 3;
DELETE FROM Nutricionista WHERE id_nutricionista = 1;
