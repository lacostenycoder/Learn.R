LearnR::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }
  resources :users, only: [:show]
  resources :music_lessons, only: [:index, :show]
  resources :code_lessons, only: [:show]

  root to: "welcome#index"


end
