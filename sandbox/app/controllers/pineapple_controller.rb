require "pineapple/translator"

class PineappleController < ApplicationController
  
  def show    
    render :layout => false
  end

  def steps
    current_step = nil
    if params['init'].nil? || params['init'] == ""
      current_step = session[:next_step]
    else
      current_step = params['init']
    end
    unless current_step.nil?
      translator = PineappleTranslator.new(current_step)
      translator.translate
      session[:next_step] = translator.next_s
      puts "next step = #{translator.next_s}"
      render :inline => translator.script
    else
      render :inline => ""
    end
  end

 
end
