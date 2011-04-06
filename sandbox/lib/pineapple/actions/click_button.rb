module Actions
  def click_button selector
    find_item selector
    @script += "pineappleVars.item.trigger('click');\n"
  end
end