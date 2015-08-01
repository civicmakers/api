Rails.application.routes.draw do

  resources :tools, only: [:index, :show]

  resources :profiles, only: [:index, :show]

  resources :projects, only: [:index]

end
