module Actions
  def fill_in selector, option
    value = option[:with]
    @script += "$('#{selector}').val('#{value}');\n"
  end
end
