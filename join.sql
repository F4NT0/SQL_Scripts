--
-- EXEMPLO DE QUERYES para utilizar no postgres Digifred
--

-- Como fazer JOIN entre duas tabelas

select tabela1.sexo,tabela2.sexo
from tabela1 join tabela2
on tabela1.sexo = tabela2.sexo;

-- Inserindo dados existentes em uma tabela que não existe na tabela que desejamos enviar
-- Abaixo se encontra a tabela cids_10 onde queremos que tenha os dados da tabela cid_10_2
INSERT INTO global.cids_10 (codigo,descricao,flag_ativo,sexo)
SELECT tb2.nu_cid10 as codigo,
       CONCAT(UPPER(SUBSTR(tb2.no_cid10,1,1)),LOWER(SUBSTR(tb2.no_cid10,2,LENGTH(tb2.no_cid10)))) as descricao,
       tb2.st_ativo as flag_ativo,
       tb2.co_sexo_cadsus as sexo
FROM global.cid_10_2 as tb2
WHERE tb2.nu_cid10 NOT IN (SELECT tb1.codigo FROM global.cids_10 as tb1);