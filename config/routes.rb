Rails.application.routes.draw do
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Form to create new cocktail
  # get '/cocktails/new', to: 'cocktails#new'

  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktails/:id', to: 'cocktails#show'

  # # Post cocktail and redirect to listing
  # post '/cocktails/:id', to: 'cocktails#create'
end
