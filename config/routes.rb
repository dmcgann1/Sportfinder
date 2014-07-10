Rails.application.routes.draw do
  devise_for :users

resources :facilities, only: [:index]
root 'home#show'

post '/facilities/search' => 'facilities#search'
post '/facilities' => 'facilities#show', as: :facility

#get '/facilities/:id/reviews/new' => 'reviews#new', as: :reviews_new
resources :facilities, only: [] do
  resources :reviews, only: [:new, :create]
  end

get '/facilities/:facility_id' => 'facilities#show', as: :facility_display

resources :reviews, only: [] do
  resources :votes, only: [:create]
end

resources :facilities, only: [] do
  resources :likes, only: [:create]
end

get '/favourites' => 'facilities#favourites', as: :favourites
end
