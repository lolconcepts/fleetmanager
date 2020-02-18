Rails.application.routes.draw do
  resources :workorders
  resources :vehicles do
  	collection {post :import}
  end
  resources :statuses
  resources :technicians do
    collection {post :import}
  end
  resources :vendors
  resources :parts
  root to: "vehicles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
