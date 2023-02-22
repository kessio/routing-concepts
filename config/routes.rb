Rails.application.routes.draw do
  resources :docs, only: [:index, :new, :create]
   root to: "docs#index"
end
