Rails.application.routes.draw do
  get 'dashboard/index'
  resources :line_items
  resources :workorders
  resources :vehicles do
  	collection {post :import}
  end
  resources :statuses
  resources :technicians do
    collection {post :import}
  end
  resources :vendors
  resources :parts do
    collection {post :import}
  end
  root to: "dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
