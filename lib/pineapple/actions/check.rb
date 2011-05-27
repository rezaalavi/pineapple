module Actions
  def check selector
    find_item selector
    jscript "pineappleVars.item.attr('checked', true);"
  end
end