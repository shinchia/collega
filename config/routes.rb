Rails.application.routes.draw do

  get "users/login" => "users#login"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "users/new" => "users#new"
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
