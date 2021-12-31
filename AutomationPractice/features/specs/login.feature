#language: pt

Funcionalidade: Login
   Sendo um usuário do Automatio Practice
   Quero acessar o site
   Para que possa comprar novas roupas

   @login
   Esquema do Cenário: login de usuário
      Dado que eu acesso a home do Automation Practice
      Quando realizo login com "tyr@teste.com" e "123456"
         E pesquiso por Dresses
      Quando seleciono tamanho
         E escolho a cor 
         E escolho a forma de pagamento <pagamento>
      Então devo validar o valor cobrado

      Exemplos:
         | pagamento |
         | "check"   |

