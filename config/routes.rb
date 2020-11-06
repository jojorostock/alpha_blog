Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  
  resources :articles
  get 'about', to: 'pages#about'
  
  resources :users, except: [:new]
  get 'signup', to: 'users#new'
  post 'users', to: 'users#creat'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :categories, except: [:destroy]
end
