Rails.application.routes.draw do
  root to: "games#index"
  resources :games, only: [:index, :new]
end
