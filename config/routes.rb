Rails.application.routes.draw do
  resources :zombies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "users/new"
  post "users/create"
  get "users/index"
  get "users/:id/edit", to: "users#edit", as: "users_edit"
  post "users:id", to: "users#update", as: "users_update"
  delete "users/:id", to: "users#destroy", as: "users_destroy"
  root "users#index"
end
