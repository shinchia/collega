Rails.application.routes.draw do
  get 'home/top'
  get 'home/show/:id' => 'topics#show', as: :topics_show
  post 'home/create' => 'home#create'
  get 'home/new_sled'
  delete 'topics/delete/:id' => 'home#delete', as: :topic_delete

end
