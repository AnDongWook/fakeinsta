Rails.application.routes.draw do
  root 'board#index'
  get 'board/new' => 'board#new'
  get 'board/create' => 'board#create'
  get 'board/create_reply' => 'board#create_reply'
  get 'board/show' => 'board#show'
  get 'border/:id/create_reply' => 'border#create_reply'
end
