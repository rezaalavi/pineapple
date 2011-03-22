module Actions
  def click_on selector
    @script += "$('#{selector}').trigger('click');\n"
  end
end