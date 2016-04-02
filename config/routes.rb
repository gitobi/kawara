Kawara::Engine.routes.draw do

  resources :categories, only: %w(index show)
  resources :articles,   only: %w(index show)
  resources :tags,       only: %w(index show)
  root 'home#index'
end
