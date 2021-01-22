Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  resources :buildings
  resources :visit_lists
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
