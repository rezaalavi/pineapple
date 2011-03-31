module Actions
  def click_button selector
    @script += "$('#{selector}').trigger('click');\n"
  end
end