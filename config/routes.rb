Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recommendations do
    resources :books, only: [ :index, :show, :edit ]
  end
end
