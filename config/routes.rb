Rails.application.routes.draw do
  get 'mente/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'mente#index'
end
