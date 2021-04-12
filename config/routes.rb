Rails.application.routes.draw do
  resources :users, only: [:create] do 
    collection do 
      get :sign_up, action: 'new'
    end
  end

  
  resources :restaurants  # 會自動產出八個
  root "restaurants#index"

end

#   def destroy
#     update(deleted_at: Time.now)
#   # resources :restaurants, only: [:index, :show]

#   # get '/restaurants', to: 'restaurants#index'

#   # get '/new_restaurant', to: 'restaurants#new'

#   # post '/restaurant_list', to: 'restaurants#list'
#   end
# end

# Rails.application.routes.draw do
#   get '/restaurants', to: 'restaurants#index'

#   get :new_restaurant, to: 'restaurants#new', path: 'ccc'

#   post '/restaurant_list', to: 'restaurants#list'

# end

# get '/hello', to: 'a#b'
# get '/', to: 'a#b'
# get '/about', to: 'pages#about'
# get '/contact', to: 'pages#contact'

