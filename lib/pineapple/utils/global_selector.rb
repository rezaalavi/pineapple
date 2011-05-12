module Actions
  
  def find_item selector
    
        @script += <<SCRIPT
    var pineappleVars.item = jQuery("##{selector}");
    if(typeof pineappleVars.item.get(0) == "undefined"){
      pineappleVars.item = jQuery("input[name='#{selector}']");
      if(typeof pineappleVars.item.get(0) == "undefined"){
        pineappleVars.item = jQuery(":contains('#{selector}')");
      } 
      if(typeof pineappleVars.item.get(0) == "undefined"){
        pineappleVars.item = jQuery("#{selector}");
      }       
    }    
SCRIPT
    
    
  end
  
end