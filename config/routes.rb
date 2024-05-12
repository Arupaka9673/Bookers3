Rails.application.routes.draw do
  root 'homes#top'
  get 'lists/new' => 'lists#new', as: 'new'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index', as: 'index'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit'
  patch 'lists/:id' => 'lists#update', as: 'update_list'
  delete 'lists/:id' => 'lists#destroy', as: 'destroy'
end