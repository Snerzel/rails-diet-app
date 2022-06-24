Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#home'
  
  get '/user-login', to: 'sessions#new_user'
  post '/user-login', to: 'users#user_session'
 # post '/sessions', to: 'sessions#create'
  get '/user-signup', to: 'users#new'
  post '/user-signup', to: 'users#create'

  get '/pro-login', to: 'sessions#new_pro'
  post '/pro-login', to: 'pros#pro_session'
  get '/pro-signup', to: 'pros#new'
  post '/pro-signup', to: 'pros#create'
  
  post '/meals/:id', to: 'notes#create'
  
  # get '/add-new-meal', to: 'meals#new'
  # post '/add-new-meal', to: 'meals#create'
  # post '/meals', to: 'meals#create'
  # get '/meals', to: 'meals#index'
  # post '/meals/:id/edit', to: 'meals#update'
  # patch 'meals/:id', to: 'meals#update'

  get '/logout_user', to: 'sessions#destroy_user'
  get '/logout_pro', to: 'sessions#destroy_pro'


  get '/auth/google_oauth2/callback', to: 'sessions#create'

 resources :notes, only: [:index, :show, :new, :create, :edit, :update]
 resources :users, only: [:index, :show, :new, :create, :edit, :update]
 resources :pros, only: [:show]
 resources :meals, only: [:index, :show, :new, :create, :edit, :update]
end
