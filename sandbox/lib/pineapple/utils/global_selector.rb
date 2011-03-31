module Actions
  
  def find_item selector
    
        @script += <<SCRIPT
    var pineapple_item = $("##{selector}");
    
    if(typeof pineapple_item.get(0) == "undefined"){     
      pineapple_item = $("input[name='#{selector}']");
      if(typeof pineapple_item.get(0) == "undefined"){     
        pineapple_item = $(":contains('#{selector}')");
      } 
      if(typeof pineapple_item.get(0) == "undefined"){     
        pineapple_item = $("#{selector}");
      } 
      
    }
      
    
SCRIPT
    
    
  end
  
end