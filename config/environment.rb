# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ENV = YAML.load_file("#{RAILS_ROOT}"/config/environment_variables/)