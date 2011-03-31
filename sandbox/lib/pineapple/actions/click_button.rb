module Actions
  def click_button selector
    find_item selector
    @script += "pineapple_item.trigger('click');\n"
  end
end