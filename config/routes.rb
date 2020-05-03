Rails.application.routes.draw do

  resources :links
  resources :recomendaciones
  resources :autores
  get 'reservadehora/index'
  get 'acrcade/index'
  resources :blogs
  get 'mente/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'mente#index'

resources :abouts, :blogs

get 'muestrablogs', to: 'blogs#muestra'
get 'muestrareco', to: 'recomendaciones#muestra'
get 'muestralinks', to: 'links#muestra'

  # get 'abouts/index'
end
