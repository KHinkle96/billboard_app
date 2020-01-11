Rails.application.routes.draw do
  root to: "pages#index"
  resources :artists
  resources :songs do
    resources :billboards, only: [:index, :new, :create, :destroy]
  end
end
