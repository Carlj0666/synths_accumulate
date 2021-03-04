Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#welcome'

  get '/auth/:provider/callback', to: 'sessions#omniauth'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/synths/prodigal', to: 'synths#prodigal', as: 'prodigal_synth'

  get '/synths/ordered_alphabetically', to: 'synths#ordered_alphabetically' 

  resources :synths
  resources :teches, only: [:new, :create, :show, :index] do
    resources :synths, only: [:index, :new, :create]
  end
  
end
