Rails.application.routes.draw do
  resources :projects do
    resources :reviews
  end
end
