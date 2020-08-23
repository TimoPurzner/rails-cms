Rails.application.routes.draw do
  resources :topics
  devise_for :users
  
  root to: 'topics#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
