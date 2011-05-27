module Actions
  def choose selector
    find_item selector
    @script += "pineappleVars.item.get(1).click();\n"
  end
end