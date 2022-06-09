Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :users,only:[:show,:edit,:update]

  get "homes/about" => "homes#about" , as: "about"
  resources :post_images,only:[:new,:create,:index,:show,:destroy]

end
