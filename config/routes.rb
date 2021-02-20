Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  get '/synths/prodigal', to: 'synths#prodigal', as: 'prodigal_synth'
  #remember that the order of routes matter here, put custom routes at the top
  # get '/synths', to: 'synths#index', as: 'synths'
  # get '/synths/:id', to: 'synths#show', as: 'synth'
  resources :synths, only: [:index, :show, :new, :create]

end
