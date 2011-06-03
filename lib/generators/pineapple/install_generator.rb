require 'rails/generators'
module Pineapple
  class InstallGenerator < Rails::Generators::Base
    desc "Some description of my generator here"

    # Commandline options can be defined here using Thor-like options:
    class_option :my_opt, :type => :boolean, :default => false, :desc => "My Option"

    # I can later access that option using:
    # options[:my_opt]


    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    # Generator Code. Remember this is just suped-up Thor so methods are executed in order

	def setup_routes	
		route('resources :pineapple_steps')
    route('match "/pineapple" => "pineapple#steps", :as => :pineapple_steps_engine')
		route('match "/pineapple.js" => "pineapple#show", :as => :pineapple_engine')
    
	end
	
	def copy_files
		directory "app"		
	end

  def setup_db
    generate("model", "pineapple_step name:string body:text")
  end

  end
end