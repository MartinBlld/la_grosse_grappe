Rails.application.routes.draw do
  devise_for :users
  root to: "grapevines#index"
  resources :grapevines do
    resources :booking, only: [:new, :create]
  end
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
