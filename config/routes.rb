Rails.application.routes.draw do
  get 'home/top'
  get 'home/show/:id' => 'home#show', as: :topics_show
  post 'home/create' => 'home#create'
  post 'posts/create' => 'post#create', as: :post_create
  delete 'topics/delete/:id' => 'home#delete', as: :topic_delete
  delete 'post/delete/:id' => 'post#delete', as: :post_delete
  get 'post/top'



end
