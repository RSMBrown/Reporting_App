Rails.application.routes.draw do
  devise_for :users
  resource :user, only: :show
  root to: "reports#index"
  #get '/user' => "reports#index", :as => :user_root
  resources :areas 
  resources :reports 
end
