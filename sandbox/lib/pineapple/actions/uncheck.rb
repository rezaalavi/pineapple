module Actions
  def uncheck selector
    find_item selector
    @script += <<script
pineapple_item.attr('checked', false);
script
script
  end
end