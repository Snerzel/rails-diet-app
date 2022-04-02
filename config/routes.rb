Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/user-signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/user-login', to: 'sessions#new_user'
  post '/user-login', to: 'sessions#create'
  post '/sessions', to: 'sessions#create'
  post '/user-signup', to: 'sessions#create'
  get '/userhome', to: 'users#show'
  root 'application#home'

  get '/pro-signup', to: 'pros#new'
  post '/pro-signup', to: 'sessions#create'
  post '/pros', to: 'pros#create'
  get '/pro-login', to: 'sessions#new_pro'
  post '/pro-login', to: 'sessions#create'

  get '/add-new-meal', to: 'meals#new'
  post '/add-new-meal', to: 'meals#create'
  post '/meals', to: 'meals#create'
  get '/meals', to: 'meals#index'
  post '/meals/:id/edit', to: 'meals#update'

  get '/logout', to: 'sessions#destroy'


  get '/auth/google/callback', to: 'sessions#create'

 resources :users, only: [:index, :show, :new, :create, :edit, :update]
 resources :pros, only: [:show]
 resources :meals, only: [:index, :show, :new, :create, :edit, :update]
end
