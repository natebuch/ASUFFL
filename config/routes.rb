Rails.application.routes.draw do

  root 'pages#home'

  get 'timer', to: 'pages#timer'

  get 'landing', to: 'pages#landing'

  get 'oops', to: 'pages#oops'

  get 'hof', to: 'pages#hof'

  get 'credits', to: 'pages#credits'

  get 'teams', to: 'pages#teams'


  post 'search_team', to: 'pages#search_team'

end