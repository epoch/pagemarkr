Rails.application.routes.draw do
  resources :bookmarks, except: [:destroy] 

  get '/api/bookmarks', to: 'api/bookmarks#index'
  post '/api/bookmarks', to: 'api/bookmarks#create'

  get '/recent', to: 'bookmarks#recent'
  get '/track', to: 'bookmarks#track'
  get '/neglected', to: 'bookmarks#neglected'
  get '/about', to: 'pages#about'
  get '/', to: 'pages#home'
end
