IFTTT::Application.routes.draw do
  resources :teams
  resources :users

  root to: 'static_pages#home'

  match '/addteam',  to: 'teams#new'
  match '/adduser',  to: 'users#new'
  match '/teams',  to: 'teams#index'
  match '/users',  to: 'users#index'
  match '/pairs',    to: 'static_pages#pairs'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'

  

end