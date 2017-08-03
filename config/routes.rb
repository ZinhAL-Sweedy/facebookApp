Rails.application.routes.draw do
  get '/searchUser' => 'users#searchUser'
  get '/searchPost' => 'posts#searchPost'
  post '/searchPost' => 'posts#searchPost'
  get '/comments/like/:id' => 'comments#like'
  get '/comments/unlike/:id' => 'comments#unlike'
  get '/comments/follow/:id' => 'comments#follow'
  get '/comments/unfollow/:id' => 'comments#unfollow'

  get '/posts/like/:id' => 'posts#like'
  get '/posts/unlike/:id' => 'posts#unlike'
  get '/posts/follow/:id' => 'posts#follow'
  get '/posts/unfollow/:id' => 'posts#unfollow'

  resources :friendships
  resources :comments
  resources :posts
  root to: "session#new"
  get     '/login' => 'session#new'       # login form
  post    '/login' => 'session#create'   # check credentials & attempt login (set session)
  delete  '/login' => 'session#destroy'  # logout (destroy session)
  resources :users


  resources :users do
    member do
      get :follow
      get :unfollow
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
