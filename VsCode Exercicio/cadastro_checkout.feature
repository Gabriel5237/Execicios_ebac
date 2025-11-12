#language: pt

Funcionalidade: Cadastro no checkout

  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Cenário: Cadastro com todos os dados obrigatórios
    Dado que eu preencha todos os campos obrigatórios marcados com asterisco
    Quando eu clicar em "Cadastrar"
    Então o sistema deve exibir a mensagem "Cadastro realizado com sucesso"

  Cenário: Validação de campos obrigatórios
    Dado que eu tente cadastrar com os seguintes dados:
      | campo       | valor              |
      | Nome        | João da Silva      |
      | E-mail      |                    |
      | Telefone    | 11987654321        |
    Quando eu clicar em "Cadastrar"
    Então deve exibir mensagem "Preencha todos os campos obrigatórios"

  Esquema do Cenário: Validação de formato de e-mail
    Dado que eu esteja na tela de cadastro
    Quando eu preencher o campo e-mail com <email>
    E clicar em "Cadastrar"
    Então o sistema deve exibir <mensagem>

    Exemplos:
      | email                 | mensagem                            |
      | joao@ebac.com.br      | "Cadastro realizado com sucesso"    |
      | joao.ebac.com.br      | "Formato de e-mail inválido"        |
      |                       | "Preencha todos os campos obrigatórios" |
