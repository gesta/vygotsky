Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/lessons', to: 'lessons#list'
  resources :lessons do
  end
end
