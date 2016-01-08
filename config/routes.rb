Rails.application.routes.draw do
  # devise_for :users
  root to: "houses#index"

  resources :houses do
    post :favorite
    delete :unfavorite
  end

  resources :users, only: [:show]

end
