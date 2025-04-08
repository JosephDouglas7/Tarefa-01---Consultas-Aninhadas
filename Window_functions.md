As **Window Functions** no PostgreSQL são ferramentas poderosas que permitem realizar cálculos sobre um conjunto de linhas relacionadas à linha atual, sem agrupar os dados em uma única linha como as funções de agregação tradicionais. Elas são úteis para análises avançadas, como rankings, totais acumulados e comparações dentro de grupos de dados. 

# Características Principais 

**Cláusula OVER**: Define o conjunto de linhas (janela) sobre o qual a função será aplicada. Pode incluir PARTITION BY para dividir os dados em grupos e ORDER BY para ordenar as linhas dentro da janela.

**Independência das Linhas**: As Window Functions mantêm a identidade das linhas originais, permitindo cálculos sem alterar a estrutura dos dados. 
**ROW_NUMBER()**: Retorna o número sequencial de cada linha dentro de sua janela. 
<pre style="background-color: black; color: white; padding: 10px; font-family: monospace;">
  <span style="color: cyan;">SELECT</span> nome, salario, <span style="color: cyan;">ROW_NUMBER()</span> 
  <span style="color: cyan;">OVER (ORDER BY</span> salario DESC) AS posicao<br>
  <span style="color: cyan;">FROM</span> <span style="color: white;">funcionarios</span>;
</pre>

**Resultado**: Lista os funcionários ordenados pelo salário, com uma posição numérica. 

**RANK()**: Retorna a classificação de cada linha dentro de sua janela, com empates recebendo o mesmo valor. 
<pre style="background-color: black; color: white; padding: 10px; font-family: monospace;">
  <span style="color: cyan;">SELECT</span> nome, salario, <span style="color: cyan;">RANK()</span> 
  <span style="color: cyan;">OVER (ORDER BY</span> salario DESC) AS rank<br>
  <span style="color: cyan;">FROM</span> <span style="color: white;">funcionarios</span>;
</pre>

**Resultado**: Classifica os funcionários pelo salário, considerando empates. 

**AVG()**: Calcula a média de valores dentro de uma janela. 
<pre style="background-color: black; color: white; padding: 10px; font-family: monospace;">
  <span style="color: cyan;">SELECT</span> departamento, salario, 
  <span style="color: cyan;">AVG(salario)</span> 
  <span style="color: cyan;">OVER (PARTITION BY</span> departamento) AS media_departamento<br>
  <span style="color: cyan;">FROM</span> <span style="color: white;">funcionarios</span>;
</pre>

**Resultado**: Mostra o salário de cada funcionário e a média salarial do departamento. 

**LAG() e LEAD()**: Permitem acessar valores de linhas anteriores ou posteriores. 
<pre style="background-color: black; color: white; padding: 10px; font-family: monospace;">
  <span style="color: cyan;">SELECT</span> nome, salario, 
  <span style="color: cyan;">LAG(salario)</span> 
  <span style="color: cyan;">OVER (ORDER BY</span> salario) AS salario_anterior<br>
  <span style="color: cyan;">FROM</span> <span style="color: white;">funcionarios</span>;
</pre>

**Resultado**: Exibe o salário atual e o salário da linha anterior. 

# Benefícios
**Flexibilidade**: Permite análises complexas sem necessidade de subconsultas ou agrupamentos.

**Performance**: Otimiza cálculos em grandes conjuntos de dados.

# Referências: 

[Copilot](https://copilot.microsoft.com/) 




