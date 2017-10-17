Rails.application.routes.draw do
  get 'test/index'
  resources :emails
  root 'test#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
