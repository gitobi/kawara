Kawara::Engine.routes.draw do

  devise_for :users, class_name: "Kawara::User", module: :devise
  resources :categories, only: %w(index show)
  resources :articles,   only: %w(index show)
  resources :tags,       only: %w(index show)
  root 'home#index'
end
