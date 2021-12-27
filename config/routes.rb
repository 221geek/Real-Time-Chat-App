Rails.application.routes.draw do
  namespace :api do
    resource :users, only: [:create, :show]
    post '/login', to: 'auth#login'
  end
end