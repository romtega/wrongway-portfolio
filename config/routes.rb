Rails.application.routes.draw do
  
  resources :works
  
  get 'jazz', to: 'pages#blog'
  get 'profile', to: 'pages#profile'
  get 'contact', to: 'pages#contact' 

  root to: 'pages#home'
end
