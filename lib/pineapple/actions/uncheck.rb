module Actions
  def uncheck selector
    find_item selector
    @script += <<script
pineappleVars.item.attr('checked', false);
script
script
  end
end