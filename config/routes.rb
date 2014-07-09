Rails.application.routes.draw do
  devise_for :users

resources :facilities, only: [:index]
root 'home#show'

post '/facilities/search' => 'facilities#search'
post '/facilities/:id' => 'facilities#show', as: :facility

get '/facilities/:id/reviews/new' => 'reviews#new', as: :reviews_new

end
