Rails.application.routes.draw do
  devise_for :users

  root to: "cities#index"

  resources :cities, :except => [:edit, :update] do
    resources :listings, :except => [:index]
  end

end
