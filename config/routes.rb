Rails.application.routes.draw do

  get "login" => "users#login_form"
 post "login" => "users#login"
 post "logout" => "users#logout"

  get "toukous/new" => "toukous#new"
  post 'toukous/create' => 'toukous#create'
  get 'toukous/:id' => 'toukous#show'
  get "toukous/:id/edit" => "toukous#edit"
  post "toukous/:id/update" => "toukous#update"
  post "toukous/:id/destroy" => "toukous#destroy"

  get "teachers/login" => "teachers#login"
  post "teachers/:id/update" => "teachers#update"
  get "teachers/:id/edit" => "teachers#edit"
  post "teachers/create" => "teachers#create"
  get "teachers/new" => "teachers#new"
  get "teachers/index" => "teachers#index"
  get "teachers/:id" => "teachers#show"
  get "teachers/profile/:id" => "teachers#profile"

  get "managers/login" => "managers#login"
  post "managers/:id/update" => "managers#update"
  get "managers/:id/edit" => "managers#edit"
  post "managers/create" => "managers#create"
  get "managers/new" => "managers#new"
  get "managers/index" => "managers#index"
  get "managers/:id" => "managers#show"

  get "menbers/login" => "menbers#login"
  post "menbers/:id/update" => "menbers#update"
  get "menbers/:id/edit" => "menbers#edit"
  post "menbers/create" => "menbers#create"
  get "menbers/new" => "menbers#new"
  get "menbers/index" => "menbers#index"
  get "menbers/:id" => "menbers#show"

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"

  get "blogs/new" => "blogs#new"
  post 'blogs/create' => 'blogs#create'
  get 'blogs/:id' => 'blogs#show'
  get "blogs/:id/edit" => "blogs#edit"
  post "blogs/:id/update" => "blogs#update"
  post "blogs/:id/destroy" => "blogs#destroy"

  get "ivents/new" => "ivents#new"
  post 'ivents/create' => 'ivents#create'
  get 'ivents/:id' => 'ivents#show'
  get "ivents/:id/edit" => "ivents#edit"
  post "ivents/:id/update" => "ivents#update"
  post "ivents/:id/destroy" => "ivents#destroy"

  get "videos/new" => "videos#new"
  post 'videos/create' => 'videos#create'
  post "videos/:id/update" => "videos#update"
  get 'videos/:id' => 'videos#show'
  get "videos/:id/edit" => "videos#edit"
  post "videos/:id/destroy" => "videos#destroy"

  get 'home/show/:id' => 'home#show', as: :topics_show
  post 'home/create' => 'home#create'
  post 'posts/create' => 'post#create', as: :post_create
  delete 'topics/delete/:id' => 'home#delete', as: :topic_delete
  delete 'post/delete/:id' => 'post#delete', as: :post_delete

  get '/' => 'home#top'

end
