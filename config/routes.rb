Rails.application.routes.draw do
  root to: 'bookshelves#index'

  resources :bookshelves, only: [:index, :show]
  resources :cookbooks, only: [:index, :new, :create, :show, :edit, :update]
end
