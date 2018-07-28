Rails.application.routes.draw do
  root 'home#spotify'
  resources :artists
  resources :albums
end
