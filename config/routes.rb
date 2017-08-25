Rails.application.routes.draw do
  devise_for :users

  resources :recipes

  resources :posts do
    resources :comments
  end

  root "posts#index"
end
