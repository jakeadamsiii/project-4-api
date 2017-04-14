Rails.application.routes.draw do
  scope :api do
    resources :donations
    resources :projects
    resources :categories
    resources :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
