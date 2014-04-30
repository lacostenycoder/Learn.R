LearnR::Application.routes.draw do

  post '/code_lessons/:id/update-win' => 'code_lessons#update_win'
  post '/music_lessons/:id/update-win' => 'music_lessons#update_win'
  devise_for :users, :controllers => { :registrations => :registrations }
  resources :users, only: [:index, :show]
  resources :music_lessons, only: [:show]
  resources :code_lessons, only: [:show]

  root to: "welcome#index"

end
