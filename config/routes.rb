Rails.application.routes.draw do
  devise_for :users

resources :facilities, only: [:index, :show]
root 'home#show'

post '/facilities/search' => 'facilities#search'

end
