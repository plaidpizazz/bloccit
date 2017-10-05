Rails.application.routes.draw do
  resources :topics do
# #34
  resources :posts, except: [:index]
  end

# #7
  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
