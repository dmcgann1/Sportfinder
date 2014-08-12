Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'home#show'

  resources :facilities, only: [:show] do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
    resources :likes, only: [:create]
  end

  resources :reviews, only: [] do
    resources :votes, only: [:create]
  end

  get '/favourites' => 'facilities#favourites', as: :favourites

  #Would like to try refactor this as Alex said it should be a get not post
  post '/facilities/search' => 'facilities#search'
end
