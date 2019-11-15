Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_page#home'
  get 'static_page/home'
  get 'categories/new'
  get 'categories/:id', to: 'categories#show'
  
  # Users Routes
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :answers
  resources :questions
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
