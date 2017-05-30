Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # /users
  # /users/:id
  # /users/:id/posts/:id
  
  resources :users, only: [:index, :show, :new, :create] do
    resources :posts, only: [:show, :new, :create]
  end
  
  root "users#index"
  
end
