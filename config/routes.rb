Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'
  # get '/hello', to: 'a#b'
  # get '/', to: 'a#b'

  # get '/about', to: 'pages#about'
  # get '/contact', to: 'pages#contact'
end