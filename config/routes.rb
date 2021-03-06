Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spaceships do
     resources :bookings, only: [:show, :new, :create, :edit, :destroy]
   end

   get "my_bookings", to: "pages#my_bookings"
 end
