Rails.application.routes.draw do
  devise_for :users
  namespace :v1, defaults: { format: :json } do # all requests need to be in json format
    resources :posts
    resource :sessions, only: [:create, :destroy]
    resources :users, only: [:create]
    # ^ singleton because only one session for the logged in user
  end
end
