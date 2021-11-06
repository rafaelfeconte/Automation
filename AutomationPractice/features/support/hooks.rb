Before do
  @cadastro_page = CadastroPage.new
  @detalhe_page = DetalhesHome.new
  @etapa_page = EtapaCompra.new
  @home_page = HomePage.new
  @order_page = OrderConfirmation.new
  @proceed_page = Proceed.new
  @sign_page = SignInPage.new
end

After do
  temp = page.save_screenshot("logs/temp_screenshot.png")

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp),
  )
end
