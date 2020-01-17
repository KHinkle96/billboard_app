Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"
  resources :artists
  resources :songs
  resources :billboards
end
