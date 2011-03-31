module Actions
  def fill_in selector, option
    value = option[:with]
    find_item selector
    @script += "pineapple_item.val('#{value}');\n"
  end
end
