Rails.application.routes.draw do
  resources :my_contents
  resources :actualities
  root to: 'visitors#maintenance'
  devise_for :users
  resources :users

  get "concept" => "visitors#concept"
  get "about" => "visitors#about"
  get "program" => "visitors#program"

end
