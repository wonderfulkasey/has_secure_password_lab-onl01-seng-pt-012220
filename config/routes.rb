Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create]

   root 'welcome#home'

   get '/login', to: 'sessions#new'
   post '/login', to: 'sessions#create'
   post '/logout', to: 'sessions#destroy'


end
