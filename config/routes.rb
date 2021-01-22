Rails.application.routes.draw do
  # root 'welcome#index', page:"index"
  # get '/index', :to => redirect('index.html')
  root 'pages#show', page: 'home'
  get '/pages/:page' => 'pages#show'
  resources :buildings
  resources :visit_lists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
