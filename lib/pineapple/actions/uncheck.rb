module Actions
  def uncheck selector
    find_item selector
    jscript "pineappleVars.item.attr('checked', false);"
  end
end