module Actions
  def click_link selector
    @script += "clickLink($('#{selector}').get(0));\n"
  end
end