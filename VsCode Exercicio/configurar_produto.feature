#language: pt

Funcionalidade: Configurar produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Cenário: Campos obrigatórios na configuração
    Dado que eu acesse a página de um produto
    Quando eu tentar adicionar ao carrinho sem selecionar cor, tamanho e quantidade
    Então deve exibir uma mensagem informando que os campos são obrigatórios

  Cenário: Limpar seleção de produto
    Dado que eu tenha selecionado as opções abaixo:
      | cor     | tamanho | quantidade |
      | Azul    | M       | 2          |
    Quando eu clicar no botão "limpar"
    Então as opções devem voltar ao estado original:
      | cor     | tamanho | quantidade |
      | vazio   | vazio   | vazio      |

  Esquema do Cenário: Limite máximo de produtos
    Dado que eu selecione cor, tamanho e quantidade
    Quando eu adicionar <quantidade> produtos ao carrinho
    Então o sistema deve exibir a mensagem <mensagem>

    Exemplos:
      | quantidade | mensagem                            |
      | 5           | "Produto adicionado com sucesso!"   |
      | 10          | "Produto adicionado com sucesso!"   |
      | 11          | "Quantidade máxima permitida: 10"   |
