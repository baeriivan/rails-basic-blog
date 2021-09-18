Rails.application.routes.draw do

  devise_for :users

  resources :posts

  # fix bug with sign_out
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy" 
  end

  root to: "home#index"

end
