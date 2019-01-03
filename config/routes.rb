Rails.application.routes.draw do
  get '/' => 'home#top'
  get "videos/new" => "videos#new"
  get 'videos/:id' => 'videos#show'
  post 'videos/create' => 'videos#create'
  get "videos/:id/edit" => "videos#edit"
  post "videos/:id/update" => "videos#update"

  post "videos/:id/destroy" => "videos#destroy"
  get 'home/show/:id' => 'home#show', as: :topics_show
  post 'home/create' => 'home#create'
  post 'posts/create' => 'post#create', as: :post_create
  delete 'topics/delete/:id' => 'home#delete', as: :topic_delete
  delete 'post/delete/:id' => 'post#delete', as: :post_delete
  get 'post/top'

end
