require 'sidekiq/web'

Rails.application.routes.draw do
  get '/enqueue/:id', to: 'tasks#new'
  root to: 'tasks#new'
  mount Sidekiq::Web, at: '/sidekiq'
end
