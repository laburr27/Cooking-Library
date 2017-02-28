Rails.application.routes.draw do
  root to: 'bookshelves#index'

  resources :bookshelves, only: [:index, :show]
  resources :cookbooks, only: [:index, :show, :new, :create, :edit]
end
