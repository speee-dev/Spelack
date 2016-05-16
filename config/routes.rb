Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :channels
  resources :search_channels, only: :index
  resources :join_channels, only: :index

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
