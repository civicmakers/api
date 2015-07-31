Rails.application.routes.draw do

  resources :tools, only: [:index]
  
end
