Sandbox::Application.routes.draw do
 

  match "/pineapple.js" => "pineapple#show", :as => :pineapple_engine
  match "/pineapple" => "pineapple#steps", :as => :pineapple_steps_engine
  
end
