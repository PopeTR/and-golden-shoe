Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact", as: :contact
  get "/men", to: "products#men", as: :men
  get "/women", to: "products#women", as: :women
  get "/sale", to: "products#sale", as: :sale
end
