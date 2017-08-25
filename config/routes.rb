Rails.application.routes.draw do
  devise_for :users

  resources :recipes

  resources :posts

  root "posts#index"
end
