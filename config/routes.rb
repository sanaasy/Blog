Rails.application.routes.draw do
  root 'posts#index'
  get '/about', to: 'static_pages#about'
  get '/stats', to: 'posts#stats'
  get '/show', to: 'posts#show'
  
  resources :posts
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
