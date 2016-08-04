Rails.application.routes.draw do
  
  get 'users/new'

  root 'static_pages#home'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get 'session/new'

  resources :users
end
