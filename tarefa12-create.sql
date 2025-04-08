SELECT p.nome AS projeto_nome, p.data_inicio AS projeto_start_date, p.data_fim AS projeto_end_date, a.descricao AS atividade_descrição, a.data_inicio AS atividade_start_date,
a.data_fim AS atividade_end_date
FROM projeto p INNER JOIN atividade_projeto ap
ON p.codigo = ap.cod_projeto INNER JOIN atividade a
ON ap.cod_atividade = a.codigo;
