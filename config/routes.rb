Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/show'
  get 'reviews/destroy'
  get 'reviews/update'
  get 'reviews/create'
  get 'reviews/edit'
  get 'reviews/index'
  get 'restaurants/new'
  get 'restaurants/show'
  get 'restaurants/destroy'
  get 'restaurants/update'
  get 'restaurants/create'
  get 'restaurants/edit'
  get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants
end
