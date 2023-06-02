# trigger_sql

#Instruções do projeto

-Crie um banco de dados, adicione tabelas e determine quais são os atributos de cada uma. Em seguida, 
execute um trigger que se relacione com algum comando, como insert, select, delete ou update.

#Resolução:

Para criar um banco de dados, adicionar tabelas e determinar os atributos de cada uma, foi necessário 
utilizar uma linguagem de consulta estruturada (SQL) para interagir com o banco de dados. Criei um
banco de dados chamado "MeuBancoDeDados", duas tabelas: "Usuarios" e "Pedidos" e seus atributos 
correspondentes: "ID" (chave primária), "Nome" e "Email".
A tabela "Pedidos" possui os atributos "ID" (chave primária), "UsuarioID" (chave estrangeira referenciando 
a tabela "Usuarios"), "Produto" e "Quantidade".
Após, criei um trigger que se relaciona com os comandos INSERT, SELECT, DELETE e UPDATE nas tabelas.
