Kawara::Engine.routes.draw do

  resources :articles, only: %w(show)
  resources :tags,     only: %w(show)
  root 'home#index'
end
