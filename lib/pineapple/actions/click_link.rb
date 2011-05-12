module Actions
  def click_link selector
    find_item selector
    @script += "clickLink(pineappleVars.item.get(0));\n"
  end
end