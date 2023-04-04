Rails.application.routes.draw do
  get 'user/omniauthcallback'
  devise_for :users, :controllers => { :registrations => 'registrations' } ,:controller => { :omniauth_callbacks => 'users/omniauth_callbacks' }

  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
     

  # Defines the root path route ("/")
  # root "articles#index"
end
