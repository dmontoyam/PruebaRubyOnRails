Rails.application.routes.draw do
  resources :references
  resources :clients
  resources :orders
  root :to => 'clients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
