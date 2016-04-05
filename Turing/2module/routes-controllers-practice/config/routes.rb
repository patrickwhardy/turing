Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  get '/students', to: 'students#index'
  resources :courses
  resources :teachers
end
