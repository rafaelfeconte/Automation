Dado("que acesso o site Automation Practice") do
  @home_page.visitar_url
end

Quando("clico em sign in") do
  @home_page.click_signIn
end

Dado("que preeencho o campo Email address com {string}") do |string|
  @sign_page.campo_email("Nilay#{Faker::Number.number(digits: 9)}@hotmail.com")
end

Quando("submeto o seguinte formulário de cadastro {string}") do |formu_code|
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/formulario.yaml"))
  #variável de instância
  @usuario = file[formu_code]
  @sign_page.click_create_account
  @cadastro_page.criando_cadastro(@usuario)
  @home_page.back_home
end

Dado("adiciono uma roupa no meu carrinho") do
  @home_page.click_blouse
end

Quando("concluir todas as etapas do processo de compra") do
  @etapa_page.click_etapas
end

Quando("escolho a forma de pagamneto {string}") do |pagamento|
  @etapa_page.click_pay(pagamento)
  @etapa_page.confrim_by_order
end
