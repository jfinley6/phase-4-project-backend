Rails.application.routes.draw do
  resources :comments, param: :text
  resources :posts
  resources :sessions, only: [:create]
  resources :registrations
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  get "/user/:id", to: "comments#user_comments"
  delete "/delete/:text", to: "comments#delete_comment"
  root to: "static#home"
  patch '/picture/:id', to: 'registrations#picture'
end
