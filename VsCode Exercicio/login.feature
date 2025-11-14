      #language: pt

      Funcionalidade: Login na plataforma

      Como cliente da EBAC-SHOP
      Quero fazer o login na plataforma
      Para visualizar meus pedidos

      Cenário: Login com sucesso
      Dado que eu acesse a página de login
      Quando eu inserir e-mail "cliente@ebac.com.br" e senha "123456"
      Então devo ser direcionado para a tela de checkout

      Cenário: Tentativas de login com dados inválidos
      Dado que eu acesse o portal com os seguintes dados:
      | email               | senha  |
      | cliente@ebac.com.br | 000000 |
      | teste@teste.com     | 123456 |
      |                     | 123456 |
      Quando eu clicar em "login"
      Então deve exibir a mensagem "Usuário ou senha inválidos"

      Esquema do Cenário: Validação de login
      Dado que eu esteja na página de login
      Quando eu inserir o email <email> e senha <senha>
      Então o sistema deve <resultado>

      Exemplos:
      | email               | senha  | resultado                           |
      | cliente@ebac.com.br | 123456 | direcionar para tela de checkout    |
      | cliente@ebac.com.br | 000000 | exibir "Usuário ou senha inválidos" |
      |                     | 123456 | exibir "Usuário ou senha inválidos" |
