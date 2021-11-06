class Proceed
  include Capybara::DSL

  def click_checkout
    find(:xpath, "//div/div[1]/header/div[3]/div/div/div[4]/div[1]/div[2]/div[4]/a").click
  end
end
