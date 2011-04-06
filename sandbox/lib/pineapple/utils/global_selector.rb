module Actions
  
  def find_item selector
    
        @script += <<SCRIPT
    var pineappleVars.item = $("##{selector}");    
    if(typeof pineappleVars.item.get(0) == "undefined"){
      pineappleVars.item = $("input[name='#{selector}']");
      if(typeof pineappleVars.item.get(0) == "undefined"){
        pineappleVars.item = $(":contains('#{selector}')");
      } 
      if(typeof pineappleVars.item.get(0) == "undefined"){
        pineappleVars.item = $("#{selector}");
      }       
    }    
SCRIPT
    
    
  end
  
end