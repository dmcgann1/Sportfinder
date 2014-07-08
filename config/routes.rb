Rails.application.routes.draw do
  devise_for :users

resources :facilities, only: [:index]
root 'home#show'

post '/facilities/search' => 'facilities#search'
post '/facilities/:reference' => 'facilities#show', as: :facility

end
