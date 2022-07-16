Rails.application.routes.draw do
  get '/user/:id' => 'user#show', as: :user_profile
  root 'site#home'
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
