Rails.application.routes.draw do
  devise_for :users
  resources :bugs 
  # get 'home/index'
  get 'home/about'
  #root 'home#index'
  root 'bugs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/search', to: "bugs#search"
  
  resources :bugs do
    member do
      put "like" => "bugs#upvote"
    end
 end
end
