Rails.application.routes.draw do
  devise_for :users
  resources :restaurants
  resources :menus
  get 'order/myorder'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
end
