Rails.application.routes.draw do
#ensures we go to /api when making requests
  scope :api do
    resources :charges
    resources :donations
    resources :projects
    resources :categories
    resources :users, except: [:create]
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'oauth/github', to: 'oauth#github'
    post 'oauth/facebook', to: 'oauth#facebook'
  end
end
