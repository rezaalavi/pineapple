module ApplicationHelper
  def pineapple_script
   engine_path =    pineapple_engine_path
   engine_path= "#{engine_path}?init=#{params['initp']}" unless params['initp'].nil?   
   engine_path
  end
end
