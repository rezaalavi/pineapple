require "pineapple/actions"
require "pineapple/utils"
require 'open-uri'

class PineappleTranslator
  include Actions
  
  attr_accessor :next_s, :script
  
  def initialize(step_body)
    @script= ""

    
    @step_body = step_body
  end
  
  def translate
    instance_eval @step_body
  end

  private

  def load_step 
    file = open(@file_name, "r")
    file.read
  end

  def next_step step
    @next_s = step
  end

end
