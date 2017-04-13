Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/lessons/', to: 'welcome#lessons'
  resources :lessons
end
