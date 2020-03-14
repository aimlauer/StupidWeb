Rails.application.routes.draw do
  resources :users, only: [:new, :create]

  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  root 'sessions#welcome'
end
