class EtapaCompra
  include Capybara::DSL

  def click_etapas
    find(:xpath, "//div/div[2]/div/div[3]/div/p[2]/a[1]").click
    click_button "processAddress"
    find("#cgv", :visible => false).click
    click_button "processCarrier"
  end

  def click_pay(pagamento)
    case pagamento
    when "check"
      find(:xpath, "//*[contains(text(), 'Pay by check')]").click
    when "bank"
      find(:xpath, "//*[contains(text(), 'Pay by bank wire ')]").click
    end
  end

  def confrim_by_order
    click_button "I confirm my order"
  end

  def back_to_orders
    find(:xpath, "//*[text()= 'Back to orders']").click
  end
end
