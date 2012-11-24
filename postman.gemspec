$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "postman/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "postman"
  s.version     = Postman::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Postman."
  s.description = "TODO: Description of Postman."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "carrierwave", "~> 0.7.1"
  s.add_dependency "kaminari", "~> 0.13.0"
  s.add_dependency "state_machine", "~> 1.1.2"
  s.add_dependency "mustache", "~> 0.99.4"
  s.add_dependency "uniquify", '~> 0.1.0'
  s.add_dependency "inherited_resources", ">= 1.3.1"
  s.add_dependency 'ace-rails-ap'
  s.add_dependency "haml", ">= 3.1.7"
  s.add_dependency "simple_form", ">= 2.0.4"
  s.add_dependency "sass", ">= 3.1.0"
  s.add_dependency "jquery-rails", '>= 2.1.3'
  s.add_dependency "bootstrap-sass", ">= 2.1.0.0"
  s.add_dependency 'bootstrap-datepicker-rails'
  s.add_dependency "parallel588-bootstrap-timepicker-rails", ">= 0.1.3"
  s.add_dependency "mail", "~> 2.4.4"
  s.add_dependency "pony", ">= 1.4"
  s.add_development_dependency "sqlite3"
end
