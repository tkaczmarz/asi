Rails.application.routes.draw do
  resources :cars
  get 'cars/new'
  get 'static_pages/home'
  get 'sessions/new'
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
