Rails.application.routes.draw do

  resources :tools, only: [:index]

  resources :profiles, only: [:index]

  resources :projects, only: [:index]

end
