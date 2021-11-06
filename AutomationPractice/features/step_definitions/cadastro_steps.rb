Então("devo vê a seguinte mensagem de confirmação {string}") do |expect_order|
  expect(@order_page.alert_confirmation).to eql expect_order
end
