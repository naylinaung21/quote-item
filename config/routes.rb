Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :quotes
  resources :poem_books
  devise_for :users
  # Defines the root path route ("/")
  
  root to: "pages#home"
end
