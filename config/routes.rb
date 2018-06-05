Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/edit'
  get 'lists/show'
  get 'lists/new'
  root 'lists#index'
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
