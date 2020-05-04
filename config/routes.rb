Rails.application.routes.draw do
  resources :reports
  namespace :admin do
      resources :companies
      resources :conditions
      resources :dvirs
      resources :inspections
      resources :inspection_types
      resources :issues
      resources :line_items
      resources :parts
      resources :statuses
      resources :technicians
      resources :vehicles
      resources :vendors
      resources :workorders

      root to: "companies#index"
    end
  resources :issues
  resources :conditions
  resources :dvirs
  resources :companies
  resources :inspections
  resources :inspection_types
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
  resources :dvir_steps
  root to: "dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
