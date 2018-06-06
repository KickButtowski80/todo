Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/edit'
  get 'lists/show'
  get 'lists/new'
  root 'lists#index'
  
  resources :lists do
    member do
      patch :complete
    end
  end
  
   root 'lists#index'
 
  
end
