Rails.application.routes.draw do
  resources :songs, only: :index
  # For now, keep the resource with no actions, since later on we will definitely need them
  resources :users, only: [] do
    member do
      get 'playlists', to: 'users#playlists'
    end
  end
  # For now, keep the resource with no actions, since later on we will definitely need them
  resources :playlists, only: [:show] do
    member do
      post 'unshare/:unshare_to_id', to: 'playlists#unshare'
      post 'share/:share_to_id', to: 'playlists#share'
    end
  end

  get 'health', to: 'home#health'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
