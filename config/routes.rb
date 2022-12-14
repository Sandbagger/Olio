Rails.application.routes.draw do
  root 'articals#index'
  resources :articals do
    post '/likes', to: 'likes#create', as: 'create_like'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
