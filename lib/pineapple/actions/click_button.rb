module Actions
  def click_button selector
    find_item selector
    jscript "pineappleVars.item.trigger('click');"
  end
end