Rails.application.routes.draw do
  
 
  resources :articles
  resources :questions
  get 'questions/new',to:'quesitons#new'
  devise_for :users
  get 'news/home',to: 'news#home'
  get 'news/new',to: 'news#new'
  post 'articles/create',to: 'articles#create'
  
  
  root controller: :news, action: :home
  
  resources :room_messages
  resources :rooms
end
