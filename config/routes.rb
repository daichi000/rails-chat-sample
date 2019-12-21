Rails.application.routes.draw do
  
 
  resources :questions
  get 'questions/new',to:'quesitons#new'
  devise_for :users
  get 'news/home',to: 'news#home'
  get 'news/new',to: 'news#new'
  
  root controller: :rooms, action: :index
  
  resources :room_messages
  resources :rooms
end
