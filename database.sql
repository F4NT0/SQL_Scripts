--
-- COMANDOS BÁSICOS DE BANCO DE DADOS
--

-- CRIANDO UMA NOVA TABELA

CREATE TABLE tabela1
(
    id int not null,
    nome varchar not null
);

-- INSERINDO VALORES EM UMA TABELA

INSERT INTO tabela1 (id, nome)
VALUES (1,'Gabriel Fanto Stundner');

-- APRESENTANDO DADOS DE DUAS TABELAS REUNIDAS EM UMA VERIFICANDO SE É O MESMO ID

SELECT tb1.nome,tb2.nome
FROM tabela1 as tb1
    JOIN tabela2 as tb2 ON tb1.id = tb2.id;
