Rails.application.routes.draw do
  get 'words/index'

  get 'sessions/new'

  root to: 'static_pages#home'
  get 'signup' , to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :words , only: [:create]
  resources :users
end
