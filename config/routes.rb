Rails.application.routes.draw do
  devise_for :users

  get '' => 'application#welcome'

  namespace :v1, defaults: { format: :json } do # all requests need to be in json format
    resources :posts
    resource :sessions, only: [:create, :destroy]
    resources :users, only: [:create]
    resources :queries, via: [:post, :options]

    # ^ singleton because only one session for the logged in user
  end

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/v1/queries"
  end
end
