Rails.application.routes.draw do
  root to: "houses#index"

  resources :houses do
    post :favorite
    delete :unfavorite
  end

  devise_for :users
  resources :users, only: [:show]
end
