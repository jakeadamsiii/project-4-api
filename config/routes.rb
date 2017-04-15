Rails.application.routes.draw do
  get 'authentications/register'

  get 'authentications/login'

  scope :api do
    resources :donations
    resources :projects
    resources :categories
    resources :users
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
