Rails.application.routes.draw do
 
  resources :associates
  resources :customers
  resources :people
  devise_for :users
 root "welcome#index"
end
