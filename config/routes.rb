Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"


  resources :post_images, only: [:new, :index, :show, :create, :detroy]

  get "/homes/about" => "homes#about", as: 'about'

end
