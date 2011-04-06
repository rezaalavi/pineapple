module Actions
  def select value, option
    selector = option[:from]
    find_item selector
    @script += "pineappleVars.item.val('#{value}');\n"
  end
end
