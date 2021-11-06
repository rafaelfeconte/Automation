class OrderConfirmation
  include Capybara::DSL

  def alert_confirmation
    return find(".alert-success").text
  end

  def confirm_bankPay
    return find(".dark").text
  end

  def value_bank
    return find(:xpath, "//*[text()= '$79.99']").text
  end

  def value_check
    return find(:xpath, "//*[text()= '$18.40']").text
  end
end
