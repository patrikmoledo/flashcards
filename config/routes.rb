Rails.application.routes.draw do
  root 'decks#index'
  resources :decks
end
