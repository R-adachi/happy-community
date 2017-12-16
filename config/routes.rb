Rails.application.routes.draw do
  #get 'sessions/new'
  
  #get 'chat_messages/index'
  get '/index', to: 'chat_messages#index'
  
  resources :communities
  resources :messages
  resources :community_tags
  resources :tags
  resources :event_members
  resources :members
  resources :events
  resources :skills
  resources :users
<<<<<<< HEAD
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'home/index'

=======
  #get 'static_pages/home'
  #get 'static_pages/help'
  get '/help',  to: 'static_pages#help'
  #get 'static_pages/about'
  get '/about', to: 'static_pages#about'
  #get 'static_pages/contact'
  get '/contact', to: 'static_pages#contact'
  get '/signup',  to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
>>>>>>> 5155cbb2c050f0bb63751de5aae45e463b27a3f1
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
