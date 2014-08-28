Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :sports, only: [:index]
  resources :user_sports, only: [:create]
  resources :users, only: [:index, :show]
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

  # root 'home#show'

end
