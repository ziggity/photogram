Rails.application.routes.draw do
  resources :posts
  resources :post
  
  root 'posts#index'

end
