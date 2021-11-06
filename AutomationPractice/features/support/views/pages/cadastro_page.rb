class CadastroPage
  include Capybara::DSL

  def criando_cadastro(usuario)
    find("#id_gender2").click
    find("input[name='customer_firstname']").set usuario["first name"]
    find("#customer_lastname").set usuario["last name"]
    find("input[name^= 'pass']").set usuario["password"]

    days = find("#days", :visible => false)
    days.find("option", text: "23").select_option

    months = find("#months", :visible => false)
    months.find("option", text: "March").select_option

    years = find("#years", :visible => false)
    years.find("option", text: "2019").select_option

    find(:xpath, "//*[contains(text(), 'Sign up for')]").click
    find(:xpath, "//*[contains(text(), 'Receive special offers')]").click

    find(:xpath, "//*[text()= 'Company']").set usuario["company"]
    find("#address1").set usuario["andress"]
    find("input[name*= 's2']").set usuario["line2"]
    find("#city").set usuario["city"]

    state = find("#id_state", :visible => false)
    state.find("option", text: "Arizona").select_option

    find("#postcode").set usuario["zip"]
    find("#other").set usuario["Additional information"]
    find("input[name= 'phone']").set usuario["home phone"]
    find("input[name= 'phone_mobile']").set usuario["mobile Phone"]
    find("#alias").set usuario["assign an address alias for future reference"]
    click_button "Register"
  end
end
