Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/user-signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/user-login', to: 'sessions#new_user'
  post '/sessions', to: 'sessions#create'
  root 'application#home'

  get '/pro-signup', to: 'pros#new'
  post '/pros', to: 'pros#create'
  get '/pro-login', to: 'sessions#new_pro'

  get '/add-new-meal', to: 'meals#new'
  post '/meals', to: 'meals#create'

end
