Rails.application.routes.draw do
#root to: 'home#index'
get '/hello', to: 'home#hello'
get '/welcome', to: 'home#welcome'
get '/anil', to: 'home#anil'
#get '/users', to: 'users#index'
#get '/users/new', to: 'users#new'
#post '/users/', to: 'users#create'
#get '/users/:id/edit', to: 'users#edit', as: :edit_user
#put '/users/:id', to: 'users#update', as: :update_user
#delete '/users/:id', to: 'users#destroy', as: :delete_user
#post '/users/:id', to: 'users#show', as: :show_user
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :users
end
