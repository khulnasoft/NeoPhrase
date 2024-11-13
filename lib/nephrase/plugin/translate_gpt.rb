require 'nephrase/plugin/translate_gpt/version'

module Nephrase
  module TranslateGpt
    # Return all .rb files inside the "actions" and "helper" directory
    def self.all_classes
      Dir[File.expand_path('**/{actions,helper}/*.rb', File.dirname(__FILE__))]
    end
  end
end

# By default we want to import all available actions and helpers
# A plugin can contain any number of actions and plugins
Nephrase::TranslateGpt.all_classes.each do |current|
  begin
    require current
  rescue LoadError => e
    warn "Failed to load #{current}: #{e.message}"
  end
end
