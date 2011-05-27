module Actions
  def fill_in selector, option
    value = option[:with]
    find_item selector
    jscript "pineappleVars.item.val('#{value}');"
  end
end
