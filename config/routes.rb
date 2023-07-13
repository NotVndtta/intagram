Rails.application.routes.draw do
  get 'profile/show'
  get 'pages/home'
  get '/users/search', to: 'users#search', as: 'search_users'
  devise_for :users
  resources :posts
  resources :users
  post 'profile/:id/follow', to: 'profile#follow', as: 'follow'
  post 'profile/:id/unfollow', to: 'profile#unfollow', as: 'unfollow'
  get 'profile/:id', to: 'profile#show', as: 'profile'
  resources :follows
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get "/users", to: "users#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts do
    resources :comments
      member do
        post 'like'
        delete 'unlike'
      end
end
end
