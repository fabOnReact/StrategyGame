Rails.application.routes.draw do

  get 'pages/index'

  get 'pages/new'

  get 'pages/show'

  get 'pages/edit'

  get 'pages/update'

  get 'pages/delete'

  get 'player/playerSettings'
  get 'game/gameSettings'
  get 'subjects/delete'

  resources :subjects, :pages
  root "game#mainPage"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
