Rails.application.routes.draw do
#   GET "restaurants"
# GET "restaurants/new"
# GET "restaurants/38"
# POST "restaurants"
# POST "restaurants/38/reviews"


  resources :restaurants do
    collection do
          resources :restaurants, only: [:show, :edit, :index, :create]

    end
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
