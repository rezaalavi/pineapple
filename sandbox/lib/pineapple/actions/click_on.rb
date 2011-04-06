module Actions
  def click_on selector
    
    find_item selector
    
    @script += <<SCRIPT
    
    if (pineappleVars.item.is('a') ) {
      clickLink(pineappleVars.item.get(0));
    }else{
      pineappleVars.item.trigger('click');
    }
SCRIPT
    
  end    
    
end