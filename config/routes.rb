Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_page#home'
  get 'static_page/home'
  
  # Users Routes
  get '/signup', to: 'users#new'
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :answers
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
