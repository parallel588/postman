module Postman
  class MailServer < ActiveRecord::Base
    attr_accessible :name, :delivery_method, :address, :port, :domain, :user_name, :password, :authentication, :enable_starttls_auto
    store :settings, accessors: [
                                 :address, :port, :domain,
                                 :user_name, :password, :authentication, :enable_starttls_auto
                                ]

    validates :name, presence: true, uniqueness: true
    validates :name, :delivery_method, :settings, presence: true
    validates :user_name, :password, :address, :port, :domain,
              :authentication, :enable_starttls_auto, presence: true, :if => proc{ |t| t.delivery_method.to_s == 'smtp' }


    def test(to_address)
      Pony.mail({
                  :from => "postman@postman.com",
                  :subject => "[ POSTMAN ] test",
                  :body => "TEST: text body",
                  :html_body => "<h2>TEST</h2>:<br /> html body",
                  :to => to_address,
                  :via => delivery_method.to_sym,
                  :via_options => settings
                })
    end

  end
end
