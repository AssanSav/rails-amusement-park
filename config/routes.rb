Rails.application.routes.draw do
  resources :attractions
  resources :users
  get '/signin', to: "sessions#signin"
  post '/signin', to: "sessions#signin"
  root 'users#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
