Rails.application.routes.draw do
  root 'twclones#index'
  resources :twclones
end
