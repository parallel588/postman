require 'rails'
require 'pony'
require 'simple_form'
require 'jquery-rails'
require 'bootstrap-sass'
require 'bootstrap-datepicker-rails'
require 'bootstrap-timepicker-rails'
require 'ace-rails-ap'
module Postman
  class Engine < ::Rails::Engine
    isolate_namespace Postman
  end
end
