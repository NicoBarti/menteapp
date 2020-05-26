Rails.application.routes.draw do

  resources :contacts
  resources :acercas
  resources :links
  resources :recomendaciones
  resources :autores
  get 'reservadehora/index'
  # get 'acrcade/index'
  resources :blogs
  get 'mente/index'
  get 'mente/:id', to: 'mente#show', as: :mente
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'mente#index'

resources :abouts, :blogs

get 'muestrablogs', to: 'blogs#muestra'
get 'muestrareco', to: 'recomendaciones#muestra'
get 'muestralinks', to: 'links#muestra'

  # get 'abouts/index'
end
