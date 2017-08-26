Rails.application.routes.draw do
  resources :todo_lists
  devise_for :users

  # RECIPES
  resources :recipes

  # MUSE
  resources :posts do
    member do
      get "like", to: "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
    resources :comments
  end

  # TODO_LISTS
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end

  root "posts#index"
end
