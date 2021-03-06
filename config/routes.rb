Rails.application.routes.draw do
  # resources :profiles
  # resources :users
  # resources :comments
  resources :activities, only: [:show]
  # resources :moods
  # resources :cities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/:city_id/activities', to: 'activities#index'
  
end
