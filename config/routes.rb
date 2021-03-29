Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'

  get :new_restaurant, to: 'restaurants#new', path: 'ccc'

  post '/restaurant_list', to: 'restaurants#list'

end

  # get '/hello', to: 'a#b'
  # get '/', to: 'a#b'

  # get '/about', to: 'pages#about'
  # get '/contact', to: 'pages#contact'

