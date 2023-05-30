Rails.application.routes.draw do
  devise_for :users
  resources :grapevines, only: %i[index show new create]
  root to: "pages#home"
<<<<<<< HEAD
  resources :grapevines do
    resources :booking, only: [:new, :create]
  end
end
=======
>>>>>>> 523813adc30db8812766b40413319912df8fba71

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
