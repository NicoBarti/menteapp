Rails.application.routes.draw do

  resources :contacts
  devise_for :users
  resources :acercas
  resources :links
  resources :recomendaciones
  resources :autores
  resources :blogs
  resources :abouts, :blogs

  get 'reservadehora/index'
  # get 'acrcade/index'
  get 'mente/index'
  get 'mente/:id', to: 'mente#show', as: :mente
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'mente#index'


get 'muestrablogs', to: 'blogs#muestra'
get 'muestrareco', to: 'recomendaciones#muestra'
get 'muestralinks', to: 'links#muestra'

  # get 'abouts/index'
end
