A Segunda Forma Normal (2FN) é uma etapa da normalização de banco de dados que ocorre após a aplicação da Primeira Forma Normal (1FN). Seu objetivo principal é eliminar a dependência parcial de colunas não-chave em relação à chave primária, o que ajuda a reduzir a redundância e melhorar a integridade dos dados.


**Sem normalização aplicada**

| Venda ID  | ProdutoID | NomeProduto | ClienteID | Quantidade
|-----------|-----------|-------------|-----------|-----------
| 1         | 1         | Caneta      | 1         | 100
| 2         | 2         | Caderno     | 2         | 50
| 3         | 1         | Caneta      | 3         | 200

**Com normalização 2FN aplicada**

Aqui, NomeProduto depende de ProdutoID, mas ProdutoID não é a chave primária dessa tabela, que é VendaID.

 ***Produtos***
| ProdutoID | NomeProduto
|-----------|------------
| 1         | Caneta
| 2         | Caderno

***Pedidos***
| VendaoID  | ProdutoID | ClienteID | Quantidade
|-----------|-----------|-----------|-----------
| 1         | 1         | Caneta    | 100
| 2         | 2         | Caderno   | 5
| 3         | 1         | Lápis     | 200

A tabela Produtos contém informações sobre os produtos, onde ProdutoID é a chave primária.

A tabela Pedidos contém informações sobre as vendas, onde VendaID é a chave primária.

Agora, não há mais dependências parciais, pois todas as colunas em Pedidos dependem totalmente da chave primária VendaID.