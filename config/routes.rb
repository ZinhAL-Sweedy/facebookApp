Rails.application.routes.draw do

  resources :friendships
  resources :comments
  resources :posts
  root to: "session#new"
  get     '/login' => 'session#new'       # login form
  post    '/login' => 'session#create'   # check credentials & attempt login (set session)
  delete  '/login' => 'session#destroy'  # logout (destroy session)
  # resources :users
  resources :users do
  member do
    get :follow
    get :unfollow
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
