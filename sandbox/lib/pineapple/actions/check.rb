module Actions
  def check selector
    find_item selector
    @script += <<script
pineapple_item.attr('checked', true);
script
script
  end
end