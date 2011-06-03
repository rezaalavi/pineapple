module Actions
  def choose selector
    find_item selector
    jscript "pineappleVars.item.click();"
  end
end