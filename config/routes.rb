Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/edit'
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
end