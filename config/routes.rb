Rails.application.routes.draw do
  root to: "pages#index"
  resources :artists
  resources :songs
  resources :billboards
end
