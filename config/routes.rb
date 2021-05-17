Rails.application.routes.draw do
  root 'welcome#index'
  get '/about', to: 'about#index'
  get '/photos', to: 'photos#index'
  get '/mail', to: 'mail#index'
  # post '/contact', to: 'contact#create'
  namespace :api do
    namespace :v1 do
      namespace :mail do
        post '/api/v1/mail', to: 'mail#create'
      end
    end
  end
end
