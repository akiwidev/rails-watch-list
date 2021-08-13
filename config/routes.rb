Rails.application.routes.draw do
  root 'pages#home'
  get '/pages', to: 'pages#home'

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
