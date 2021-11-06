class SignInPage
  include Capybara::DSL

  def campo_email(email)
    find("#email_create").set email
  end

  def click_create_account
    find("#SubmitCreate").click
  end

  def login(email, password)
    find("#email").set email
    find("#passwd").set password
    click_button "Sign in"
  end

  def more
    find(:xpath, "//div/div[2]/div/div[3]/div[2]/ul/li[4]/div/div[2]/div[2]/a[2]/span").click
  end
end
