Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  mount ProductManagement::Engine => '/product_management'
  # Defines the root path route ("/")
  # root "articles#index"
end
