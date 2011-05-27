module Actions
  def check selector
    find_item selector
    @script += <<script
pineappleVars.item.attr('checked', true);
script
script
  end
end