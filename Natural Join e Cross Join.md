# NATURAL JOIN
**Definição**: Faz uma junção entre duas tabelas baseando-se nas colunas com o mesmo nome e tipo de dado em ambas as tabelas. Ele combina automaticamente as linhas cujos valores nas colunas compartilhadas são iguais.

**Vantagem**: Simplifica a sintaxe eliminando a necessidade de especificar explicitamente as condições de junção (ON).

**Importante**: As colunas comuns precisam existir em ambas as tabelas e devem ter nomes idênticos.

**Exemplo**: Considere duas tabelas:

# Tabela Funcionarios: 
|ID| nome | DepartamentoID|
|--|-----| ---------------|
|1| Ana| 10|
|2| Carlos| 20|
|3| Joana| 10| 

# Tabela Departamentos: 
|DepartamentoID| NomeDepartamento|
|--------------|-----------------| 
|10| Marketing|
|20| Vendas| 

# Consulta com NATURAL JOIN: 
<pre style="background-color: black; color: white; padding: 10px; font-family: monospace;">
  <span style="color: cyan;">SELECT</span> *            <!-- branco -->
  <span style="color: cyan;">FROM</span> <span style="color: white;">Funcionarios</span>    <!-- azul + branco -->
  <span style="color: cyan;">NATURAL JOIN</span> <span style="color: white;">Departamentos</span>; <!-- verde + branco -->
</pre>


**Resultado**: 
|ID| Nome| DepartamentoID| NomeDepartamento| 
|--|-----|---------------|-----------------| 
|1| Ana| 10| Marketing|
|3| Joana| 10| Marketing|
|2| Carlos| 20| Vendas|

# CROSS JOIN
**Definição**: Faz o produto cartesiano entre duas tabelas. Ou seja, combina cada linha da primeira tabela com todas as linhas da segunda tabela.

**Vantagem**: Útil quando todas as combinações possíveis entre os dados das tabelas são relevantes.

**Importante**: O resultado pode ser muito grande, pois o número de linhas do resultado será o produto do número de linhas das duas tabelas.

**Exemplo**: Mesmas tabelas Funcionarios e Departamentos. 
# Consulta com CROSS JOIN: 
<pre style="background-color: black; color: white; padding: 10px; font-family: monospace;">
  <span style="color: cyan;">SELECT</span> * <br>
  <span style="color: cyan;">FROM</span> <span style="color: white;">Funcionarios</span> <br>
  <span style="color: cyan;">CROSS JOIN</span> <span style="color: white;">Departamentos</span>;
</pre>

|ID| Nome| DepartamentoID(Funcionarios)| DepartamentoID(Departamentos)| NomeDepartamento|
|--|-----| --------------|-------------|-----------------|
|1| Ana| 10| 10| Marketing|
|1| Ana| 10| 20| Vendas|
|2| Carlos| 20| 10| Marketing|
|2| Carlos| 20| 20| Vendas|
|3| Joana| 10| 10| Marketing|
|3| Joana| 10| 20| Vendas| 

# Resumo Comparativo 
|Tipo de Join| Combina com base em...?| Número de linhas resultantes|
|------------| ------------|--------------------|
|Natural Join| Colunas compartilhadas| Apenas combinações onde as colunas comuns são iguais|  
|Cross Join| Produto cartesiano(todas as linhas)|Multiplicação do número de linhas das tabelas envolvidas| 

# Referências: 

[Copilot](https://copilot.microsoft.com/) 


