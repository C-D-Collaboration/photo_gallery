Rails.application.routes.draw do
  root 'welcome#index'
  get '/about', to: 'about#index'
  get '/photos', to: 'photos#index'
end
