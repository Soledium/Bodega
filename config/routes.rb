Rails.application.routes.draw do
  root "dashboard#index"  
  get 'home/index'
  devise_for :users
    resources :products do
    member do
      get :new_movement
      post :create_movement
    end
  end
end
