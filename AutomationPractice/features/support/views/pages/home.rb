class HomePage
  include Capybara::DSL

  def visitar_url
    visit "/"
  end

  def click_signIn
    find(:xpath, "//*[contains(text(), 'Sign')]").click
  end

  def back_home
    find(:xpath, "//*[@id='columns']/div[1]/a/i").click
  end

  def click_blouse
    find(:xpath, "//div/div[2]/div/div[2]/div/div[1]/ul[1]/li[2]/div/div[2]/div[2]/a[1]").click
  end

  def continueShopping
    find(".exclusive-medium").click
  end

  def more
    find(:xpath, "//li[4]/div/div[2]/div[2]/a[2]").click
  end

  def search
    find("input[placeholder= 'Search']").set "dresses"
    find(".button-search").click
  end
end
