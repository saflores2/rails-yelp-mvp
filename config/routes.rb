Rails.application.routes.draw do
  # get 'reviews/new'
  # post 'restaurants/crate'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:create, :show, :new, :index] do
    # restaurantes/id/reviews/new
    resources :reviews, only: [:create]
  end
end
