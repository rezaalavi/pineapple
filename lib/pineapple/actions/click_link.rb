module Actions
  def click_link selector
    find_item selector
    jscript "clickLink(pineappleVars.item[pineappleVars.item.size()-1]);"
  end
end