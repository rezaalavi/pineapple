module Actions
  def click_link selector
    find_item selector
    jscript "clickLink(pineappleVars.item.get(0));"
  end
end