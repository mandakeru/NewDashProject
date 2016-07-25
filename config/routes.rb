Rails.application.routes.draw do
 
  resources :products
  resources :associates
  resources :customers
  resources :people
  devise_for :users
 root "welcome#index"
end
