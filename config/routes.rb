Rails.application.routes.draw do
  get 'messages/index'
  root to: "messages#index"
  resources :message, only:[:index, :new] 
end
