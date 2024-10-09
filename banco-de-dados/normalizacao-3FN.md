A Terceira Forma Normal (3FN) é uma etapa avançada na normalização de banco de dados, que busca eliminar redundâncias e dependências indesejadas nos dados. Ela é aplicada após a Segunda Forma Normal (2FN) e foca em garantir que as colunas em uma tabela não apenas dependam da chave primária, mas também que não haja dependências transitivas.

Uma dependência transitiva ocorre quando um atributo não-chave depende de outro atributo não-chave que, por sua vez, depende da chave primária. Isso cria uma relação indireta entre o atributo não-chave e a chave primária, o que pode levar a redundâncias.

Cada tabela deve ser específica e, quando necessário, deve conter chaves estrangeiras para estabelecer relações entre os dados.

**Sem normalização aplicada**

| EmpregadosID | Nome  | ProjetoID | LocalProjeto
|--------------|-------|-----------|-------------
| 1            | João  | 1         | São Paulo
| 2            | Maria | 2         | Rio de Janeiro
| 3            | Pedro | 1         | São Paulo

**Com normalização 3FN aplicada**

***Empregados***

| EmpregadosID | Nome
|--------------|-------
| 1            | João
| 2            | Maria
| 3            | Pedro

***Projetos***

ProjetoID | LocalProjeto
----------|-------------
1         | São Paulo
2         | Rio de Janeiro
1         | São Paulo

***AssociaEmpregados***

| EmpregadosID | ProjetoID
---------------|----------
| 1            | 1
| 2            | 2
| 3            | 1