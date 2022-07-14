Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  get "/homes/about" => "homes#about", as:"about"
  devise_for :users
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
