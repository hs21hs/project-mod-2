Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :home, only: :index
resources :users
resources :albums

resources :pictures

get '/sessions/new', to: 'sessions#new', as: 'new_session'
post '/sessions', to: 'sessions#create', as: 'sessions'
delete '/sessions', to: 'sessions#destroy', as: 'logout'



end
