module Actions
  def click_link selector
    find_item selector
    @script += "clickLink(pineapple_item.get(0));\n"
  end
end