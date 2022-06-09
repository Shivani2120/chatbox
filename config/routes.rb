Rails.application.routes.draw do
  get 'landing/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

   get 'demos/index'
   get 'demos/hello'
   get 'demos/hello1'
   get 'demos/youtube'
   
   namespace :api do
      namespace :v1 do
         resources :users   
      end
   end   

   resources :users

   resources :hotels do
      resources :reviews
   end   
   
   get 'landing/index'
   
   root "landing#index"
   
   # root "users#index"

   resources :messages, only: [:new, :create]


end
