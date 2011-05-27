module Actions
  def select value, option
    selector = option[:from]
    find_item selector
    jscript "pineappleVars.item.val('#{value}');"
  end
end
