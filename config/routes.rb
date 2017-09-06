Rails.application.routes.draw do
  get 'signup' , to: 'users#new'
  
  root to: 'static_pages#home'
  
  resources :users
end
