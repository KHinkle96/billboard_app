Rails.application.routes.draw do
  resources :artists
  resources :songs do
    resources :billboards, only: [:index, :new, :create, :destroy]
  end
end
