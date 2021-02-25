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
  #remember that the order of routes matter here, put custom routes at the top
  # get '/synths', to: 'synths#index', as: 'synths'
  # get '/synths/:id', to: 'synths#show', as: 'synth'
  resources :synths
  resources :teches, only: [:new, :create, :show, :index ]

  
end
