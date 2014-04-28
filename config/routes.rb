LearnR::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }
  resources :users, only: [:show]
  root to: "welcome#index"

  resources :code_lessons, only: [:show]

end
