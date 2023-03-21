Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show] do
    resources :items, only: [:index, :create, :show] 

  # resources :items, only: [:show] do
  #   resources :users, only: [:show, :index]
  # end
  end 
  
end
