Postman::Engine.routes.draw do

  resources :mail_servers do
    member do
      get :test
      post :send_test
    end
  end

  resources :letter_templates

  root to: 'mail_servers#index'
end
