Rails.application.routes.draw do

  resources :restaurants, only: [:new, :update, :show, :edit, :create, :index, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  # get    "restaurants",          to: "restaurants#index"

  # get    "restaurants/new",      to: "restaurants#new"
  # post   "restaurants",          to: "restaurants#create"

  # get    "restaurants/:id",      to: "restaurants#show"

  # get    "restaurants/:id/edit", to: "restaurants#edit"
  # patch  "restaurants/:id",      to: "restaurants#update"

  # delete "restaurants/:id",      to: "restaurants#destroy"
end

