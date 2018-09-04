Rails.application.routes.draw do
  resources :songs
  resources :users
  resources :playlists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
