Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  resources :welcome, only: [:index]
  resources :users, only: [:index,:show, :edit, :update]
  resources :topics, only: [:index, :new, :create, :search] do
    resources :posts, only: [:index, :new, :create]
  end

end
