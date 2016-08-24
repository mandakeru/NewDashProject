Rails.application.routes.draw do
 
  get 'people/index'

  get 'people/create'

  get 'people/update'

  get 'people/destroy'

  get 'people/create'

  get 'person_controller/create'

  resources :products
  resources :associates
  resources :customers
  resources :people
  devise_for :users
 root "welcome#index"
end
