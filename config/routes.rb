Rails.application.routes.draw do
  get 'blogs/index'
  get 'dashboard/index'

  root "dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
end
