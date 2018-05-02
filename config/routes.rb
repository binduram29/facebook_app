Rails.application.routes.draw do
  get 'home/index'

  get '/auth/:provider/callback' => 'sessions#create', :via => [:get, :post]
  #get '/sessions/create/callback' => 'sessions#create', :via => [:get, :post]
  match '/signout' => 'sessions#destroy', :as => :signout, :via => [:get, :post]
  match '/signin' => 'sessions#new', :as => :signin, :via => [:get, :post]
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
