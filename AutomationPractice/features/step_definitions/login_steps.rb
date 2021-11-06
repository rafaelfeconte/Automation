Dado("que eu acesso a home do Automation Practice") do
  @home_page.visitar_url
end

Quando("realizo login com {string} e {string}") do |email, password|
  @home_page.click_signIn
  @sign_page.login("tyr@teste.com", "123456")
end

Quando("pesquiso por Dresses") do
  @home_page.search
  @sign_page.more
end

Quando("seleciono tamanho") do
  @detalhe_page.size_dress
end

Quando("vejo o detalhe da roupa") do
  @detalhe_page.view
end

Quando("escolho a cor") do
  @detalhe_page.green_color
  @detalhe_page.add_to_cart
end

Quando("escolho a forma de pagamento {string}") do |pagamento|
  @proceed_page.click_checkout
  @etapa_page.click_etapas
  @etapa_page.click_pay(pagamento)
end

Então("devo validar o valor cobrado") do
  expect(@order_page.value_check).to eql "$18.40"
end
