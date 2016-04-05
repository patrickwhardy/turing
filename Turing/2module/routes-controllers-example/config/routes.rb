Rails.application.routes.draw do
  # get '/tasks', to: 'tasks#index'
  # #route, what controller, what action
  # get 'tasks/new', to: 'tasks#new'
  # # post '/tasks/new', to: 'new_tasks#create'
  # get '/tasks/:id', to: 'tasks#show'
  # get '/tasks/:id/edit', to: 'tasks#edit'
  # #patch 'tasks/:id', to: 'tasks#update'
  root 'tasks#index'
  resources :tasks

end
