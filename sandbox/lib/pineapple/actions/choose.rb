module Actions
  def choose selector
    find_item selector
    @script += "pineapple_item.get(1).click();\n"
  end
end