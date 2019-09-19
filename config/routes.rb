Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :docs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticated :user do
  	root "docs#index", as: "authenticated_root"
  end

  root 'welcome#index'

  
end
