Exposition::Engine.routes.draw do
  namespace :admin do
    resources :posts
    resources :tags
    get    'login'   => 'sessions#new'
    post   'login'   => 'sessions#create'
    get    'logout'  => 'sessions#destroy'
  end

  resources :posts, only: [:show]
  resources :tags, only: [:show]

  root to: 'posts#index'
end
