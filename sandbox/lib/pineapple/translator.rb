require "pineapple/actions"
require "pineapple/utils"
require 'open-uri'

class PineappleTranslator
  include Actions
  
  attr_accessor :next_s, :script
  
  def initialize(current_step)
    @script= ""

    steps_root_path = ENV['PINEAPPLE_STEPS_PATH']
    if steps_root_path.nil? || steps_root_path.empty?
      steps_root_path = "#{Rails.root}/pineapple/steps/"
    end
    
    @file_name = "#{steps_root_path}#{current_step}"
    @step_body = load_step
  end
  
  def translate
    instance_eval @step_body, @file_name
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
