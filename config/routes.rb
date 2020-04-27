Rails.application.routes.draw do

  resources :autores
  get 'reservadehora/index'
  get 'acrcade/index'
  resources :blogs
  get 'mente/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'mente#index'

resources :abouts, :blogs

get 'muestrablogs', to: 'blogs#muestra'

  # get 'abouts/index'
end
