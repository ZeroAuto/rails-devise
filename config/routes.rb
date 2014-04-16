RailsDevise::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :user_steps
  resources :users do
  	resources :members
  end
end