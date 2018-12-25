Rails.application.routes.draw do
  root 'twclones#index'
  resources :twclones do
    collection do
      post :confirm
    end
  end
end
