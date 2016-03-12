Kawara::Engine.routes.draw do
  resources :articles, only: %w(show)
end
