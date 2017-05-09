Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :users, only: [:index, :show]
  resources :events do
    resources :comments
  end
  resources :updates do
    resources :comments
    resources :likes
  end
  resources :comments do
    resources :comments
    resources :likes
  end
  get 'about', to: 'pages#about'

  get 'help', to: 'pages#help'

  get 'contact', to: 'pages#contact'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
