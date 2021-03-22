Rails.application.routes.draw do
  get "customers/index"
  get "customers/missing_email"
  get "customers/alphabetized"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "customers#index"
end
