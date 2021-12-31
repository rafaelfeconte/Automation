Dado("clico em Proceed to checkout") do
  #componente
  @proceed_page.click_checkout
end

Dado("escolho outra peça de roupa") do
  @home_page.continueShopping
end

Dado("devo mudar tamanho e cor") do
  @home_page.more
  @detalhe_page.size
  @detalhe_page.pink_color
  @detalhe_page.view
  @detalhe_page.add_to_cart
  @proceed_page.click_checkout
end

Então("devo conferir no resumo o valor que foi cobrado") do
  expect(@order_page.confirm_bankPay).to eql "Your order on My Store is complete."
  expect(@order_page.value_bank).to eql "$79.99"
end
