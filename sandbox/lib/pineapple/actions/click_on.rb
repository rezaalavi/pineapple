module Actions
  def click_on selector
    
    find_item selector
    
    @script += <<SCRIPT
    
    if (pineapple_item.is('a') ) {
      clickLink(pineapple_item.get(0));      
    }else{
      pineapple_item.trigger('click');
    }
SCRIPT
    
  end    
    
end