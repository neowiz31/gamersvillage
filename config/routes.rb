Rails.application.routes.draw do
  devise_for :users
  root to: "games#index"
  resources :games do
    resources :comments, only: :create
  end
end
