LearnR::Application.routes.draw do

  devise_for :users
  resources :user
  root to: "user#index"

end
