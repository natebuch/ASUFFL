Rails.application.routes.draw do

  root 'pages#home'

  get 'landing', to: 'pages#landing'

  get 'oops', to: 'pages#oops'

  post 'search_team', to: 'pages#search_team'

end