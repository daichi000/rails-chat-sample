Rails.application.routes.draw do
  
 
  devise_for :users
  get 'news/home',to: 'news#home'
  get 'news/new',to: 'news#new'
  post 'articles/create',to: 'articles#create'
  
  
  root controller: :rooms, action: :index
  
  resources :room_messages
  resources :rooms
end
