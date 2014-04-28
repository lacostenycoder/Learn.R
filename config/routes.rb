LearnR::Application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }
  resources :users, only: [:show]
  resources :music_lessons, only: [:index, :show]
  root to: "welcome#index"
end
