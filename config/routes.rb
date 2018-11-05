Rails.application.routes.draw do
  resources :donations
  resources :needs
  resources :donation_categories
  resources :donation_kinds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
