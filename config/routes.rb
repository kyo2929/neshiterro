Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  
  resources :post_image, only: [:new, :index, :show, :create, :detroy]
  
end
