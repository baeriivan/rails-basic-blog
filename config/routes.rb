Rails.application.routes.draw do

  devise_for :users
  # fix bug with sign_out
  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy" 
  end

  resources :posts do
    resources :comments
  end

  root to: "home#index"

end
