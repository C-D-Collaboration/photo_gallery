Rails.application.routes.draw do
  root 'welcome#index'
  get '/about', to: 'about#index'
  get '/photos', to: 'photos#index'
  get '/contact', to: 'contact#index'
  post '/contact', to: 'contact#create'
end
