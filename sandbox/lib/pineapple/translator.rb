require "pineapple/actions"
require "pineapple/utils"

class PineappleTranslator
  include Actions
  
  attr_accessor :next_s, :script
  
  def initialize(current_step)
    @script= ""   
    @file_name = "#{Rails.root}/pineapple/steps/#{current_step}"
    @step_body = load_step
  end
  
  def translate
    instance_eval @step_body, @file_name
  end

  private

  def load_step 
    file = File.open(@file_name, "r")
    file.read
  end

  def next_step step
    @next_s = step
  end

end
