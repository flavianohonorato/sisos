Sisos::Application.routes.draw do
  root :to => 'pages#index'

  resources :clients, :users, :orders, :categories, :authors

end
