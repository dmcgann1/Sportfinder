Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # root 'home#show'

  resources :sports, only: [:index]
  resources :users, only: [:show]
  resources :bookings, only: [:index, :new, :create]

  resources :facilities, only: [:show] do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
    resources :likes, only: [:create]
  end

  resources :reviews, only: [] do
    resources :votes, only: [:create]
  end

  resources :user_sports, only: [:create]

  get '/favourites' => 'facilities#favourites', as: :favourites
  post '/facilities/search' => 'facilities#search'
end
