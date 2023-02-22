Rails.application.routes.draw do
  resources :docs, only: [:index, :show, :new, :create]
   root "resumes#index"
end
