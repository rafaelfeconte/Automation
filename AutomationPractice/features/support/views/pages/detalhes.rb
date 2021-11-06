class DetalhesHome
  include Capybara::DSL

  def size
    option_size = find("#group_1", :visible => false)
    option_size.find("option", text: "M").select_option
  end

  def pink_color
    find("#color_24").click
  end

  def add_to_cart
    click_button "Add to cart"
  end

  def size_dress
    option_dress = find("#group_1", :visible => false)
    option_dress.find("option", text: "S").select_option
  end

  def view
    find(".span_link").click
    find(".fancybox-close").click
  end

  def green_color
    find("#color_15").click
  end
end
