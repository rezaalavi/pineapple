module Actions
  def select value, option
    selector = option[:from]
    find_item selector
    @script += "pineapple_item.val('#{value}');\n"
  end
end
