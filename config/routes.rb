Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  root 'posts#index'
  resources :posts, only: [:index, :new, :create, :show]
end
