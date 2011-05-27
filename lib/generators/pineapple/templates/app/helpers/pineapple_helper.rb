module ApplicationHelper
  def action_script 
    init = params['initp']
    current_step = nil
    if init.nil? || init == ""
      current_step = session[:next_step]
    else
      current_step = init
    end
    unless current_step.nil?
      translator = PineappleTranslator.new(current_step)
      translator.translate
      session[:next_step] = translator.next_s

      translator.script
    else
      ""
    end
  end
end
