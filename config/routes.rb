Rails.application.routes.draw do
  devise_for :users

resources :facilities, only: [:index]
root 'home#show'

post '/facilities/search' => 'facilities#search'
post '/facilities' => 'facilities#show', as: :facility

#get '/facilities/:id/reviews/new' => 'reviews#new', as: :reviews_new
resources :facilities, only: [:show] do
  resources :reviews, only: [:new, :create]
  end
end
