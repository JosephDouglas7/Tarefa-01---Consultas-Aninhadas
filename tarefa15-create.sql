CREATE VIEW atividades_por_projeto AS
SELECT ap.cod_projeto AS projeto_id, COUNT(ap.cod_atividade) AS total_atividades
FROM atividade_projeto ap
GROUP BY ap.cod_projeto;

CREATE VIEW responsaveis_por_projeto AS
SELECT ap.cod_projeto AS projeto_id, COUNT(DISTINCT a.cod_responsavel) AS total_responsaveis
FROM atividade_projeto ap INNER JOIN atividade a
ON ap.cod_atividade = a.codigo
GROUP BY ap.cod_projeto;

SELECT  p.nome AS projeto_nome,f.nome AS responsavel_projeto_nome, COALESCE(ap.total_atividades, 0) AS quantidade_atividades, COALESCE(rp.total_responsaveis, 0) AS quantidade_responsaveis
FROM projeto p LEFT JOIN funcionario f
ON p.cod_responsavel = f.codigo LEFT JOIN atividades_por_projeto ap
ON p.codigo = ap.projeto_id LEFT JOIN responsaveis_por_projeto rp
ON p.codigo = rp.projeto_id;
