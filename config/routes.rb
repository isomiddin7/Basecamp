Rails.application.routes.draw do
  resources :tasks
  resources :posts do 
    resources :comments
  end
 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :projects do 
    resources :attachers
    resources :tasks
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
