module Actions
  def click_on selector
    
    find_item selector
    
    @script += <<SCRIPT
    
    if (pineappleVars.item.is('a') ) {

      clickLink(pineappleVars.item[pineappleVars.item.size()-1]);
    }else{
      pineappleVars.item.trigger('click');
    }
SCRIPT
    
  end    
    
end