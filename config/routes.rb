Rails.application.routes.draw do
  
  resources :blogs, :path => 'jazz'
  resources :works, :path => "work"

  get 'profile', to: 'pages#profile'
  get 'contact', to: 'pages#contact' 

  root to: 'pages#home'
end
