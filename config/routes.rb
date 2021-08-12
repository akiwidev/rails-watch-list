Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/lists', to: 'lists#index', as: :lists
  # get '/lists/new', to: 'lists#new', as: :new_list
  # post '/lists', to: 'lists#create'
  # get '/list/:id', to: 'lists#show', as: :list
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
