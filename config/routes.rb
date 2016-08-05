Rails.application.routes.draw do
  


  root 'static_pages#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/new_post', to: 'posts#new'
  post '/new_post', to: 'posts#create'
  get '/clubhouse', to: 'posts#index'

  resources :users
end
