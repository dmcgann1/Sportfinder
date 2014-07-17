Rails.application.routes.draw do
  devise_for :users

  root 'home#show'

  resources :facilities, only: [:show]

  resources :facilities, only: [] do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :reviews, only: [] do
    resources :votes, only: [:create]
  end

  resources :facilities, only: [] do
    resources :likes, only: [:create]
  end

  get '/favourites' => 'facilities#favourites', as: :favourites

  #Would like to try refactor this as Alex said it should be a get not post
  post '/facilities/search' => 'facilities#search'
end
