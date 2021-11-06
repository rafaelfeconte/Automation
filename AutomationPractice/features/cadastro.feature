#language: pt

Funcionalidade: Cadastro de usuário
  Sendo um cliente que quero renovar o meu quarda-roupas
  Quero fazer o meu cadastro no Automation Practice
  Para que eu possa realizar compras de novas roupas

  Contexto:
    Dado  que acesso o site Automation Practice
    Quando clico em sign in

  @cadastro
  Esquema do Cenário: Fazer cadastro e comprando no check
    Dado que preeencho o campo Email address com <email>
      E submeto o seguinte formulário de cadastro <formulario>
      E adiciono uma roupa no meu carrinho
      E clico em Proceed to checkout
      E concluir todas as etapas do processo de compra
    Então escolho a forma de pagamneto <pagamento>
      E devo vê a seguinte mensagem de confirmação "Your order on My Store is complete."

    Exemplos:
      | email | formulario | pagamento |
      | ""    | "cadastro" | "check"   |

  @cadastro2
  Esquema do Cenário: fazer cadastro e comprando duas peças de roupas com pagamento via bank
    Dado que preeencho o campo Email address com <email>
      E submeto o seguinte formulário de cadastro <formulario>
      E adiciono uma roupa no meu carrinho
      E escolho outra peça de roupa
      E devo mudar tamanho e cor
      E concluir todas as etapas do processo de compra
    Então escolho a forma de pagamneto <pagamento>
      E devo conferir no resumo o valor que foi cobrado 

    Exemplos:
      | email | formulario  | pagamento |
      | ""    | "cadastro2" | "bank"    |