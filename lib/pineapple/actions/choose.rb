module Actions
  def choose selector
    find_item selector
    jscript "pineappleVars.item.get(1).click();"
  end
end