Rails.application.routes.draw do
  post 'animal_pictures/get_fox'
  get 'animal_pictures/index'
  post 'animal_pictures/get_cat'
  post 'animal_pictures/get_dog'
  post 'animal_pictures/get_duck'
  resources :dummy_models
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
