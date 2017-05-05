Rails.application.routes.draw do

  resources :updates
  get 'about', to: 'pages#about'

  get 'help', to: 'pages#help'

  get 'contact', to: 'pages#contact'

  root 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
