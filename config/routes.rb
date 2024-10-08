Rails.application.routes.draw do
  resources :user_books
  resources :users
  resources :books do
    member do
      get 'delete'
    end
  end
  root 'user_books#index'

  get 'books/delete/:id', to: 'books#delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
