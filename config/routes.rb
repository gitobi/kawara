Kawara::Engine.routes.draw do

  resources :categories, only: %w(show)
  resources :articles,   only: %w(show)
  resources :tags,       only: %w(show)
  root 'home#index'
end
