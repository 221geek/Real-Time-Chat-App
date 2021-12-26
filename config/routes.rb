Rails.application.routes.draw do
  scope(:path => '/api') do
    resource :users, only: [:create]
    post '/login', to: 'auth#login'
  end
end
