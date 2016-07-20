Rails.application.routes.draw do
 
  resources :associates
  resources :customers
  devise_for :users
 root "welcome#index"
end
