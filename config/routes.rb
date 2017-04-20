Rails.application.routes.draw do

  scope :api do
    resources :charges
    resources :donations
    resources :projects
    resources :categories
    resources :users, except: [:create]
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'oauth/github', to: 'oauth#github'
  end
end
