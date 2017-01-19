Rails.application.routes.draw do

  get 'player/playerSettings'
  get 'game/gameSettings'
  get 'subjects/delete'

  resources :subjects
  root "game#mainPage"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
