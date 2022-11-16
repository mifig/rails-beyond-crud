Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top
    end

    member do
      get :chef
    end

    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
  # get "/restaurants/top", to: "restaurants#top"
  # get "restaurants/:id/chef", to: "restaurants#chef"
  # get "/restaurants/:id/reviews/new", to: "reviews#new"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
