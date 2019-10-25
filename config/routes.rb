Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :home, only: [:index, :show]
resources :users
resources :albums, only: [:create, :new, :show, :edit, :update, :destroy, :index]
resources :likes, only: [:create, :destroy, :index, :show]
resources :pictures

resources :album_pictures, only: [:create,:index, :destroy, :show]
get '/sessions/new', to: 'sessions#new', as: 'new_session'
post '/sessions', to: 'sessions#create', as: 'sessions'
delete '/sessions', to: 'sessions#destroy', as: 'logout'
get '/sessions', to: 'sessions#index', as: 'session_index'
get '/sessions/:id', to: 'sessions#show'


end
