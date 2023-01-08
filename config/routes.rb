Rails.application.routes.draw do
  #root 'posts#index'
  root  'users#index'
  resources :users  do 
    resources :posts do 
      resources :comments
    end 
  end 
   
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
