require_dependency "postman/application_controller"

module Postman
  class MailServersController < ApplicationController
    inherit_resources

    def new
      new! do
        if params[:template].to_s == 'gmail'
          resource.address = 'smtp.gmail.com'
          resource.port = '587'
          resource.authentication = 'plain'
          resource.enable_starttls_auto = true
          resource.domain = 'localhost.localdomain'
        end

      end
    end

    def send_test
      if params[:email].present?
        resource.test(params[:email])
        redirect_to mail_servers_path, :notice => "OK"
      else
        redirect_to :back, :alert => "Email must not be blank"
      end
    end

  end
end
