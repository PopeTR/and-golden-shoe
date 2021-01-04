Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :pages, to: "pages#products", :path => 'products', as: :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact", as: :contact
end
