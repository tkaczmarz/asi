Rails.application.routes.draw do
  get 'users/company_data'

  get 'users_controller/company_data'

  resources :companies
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
  get '/company', to: 'users#company_data'
  resources :users
end
