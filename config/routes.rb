Rails.application.routes.draw do

  root 'pages#home'

  get 'landing', to: 'pages#landing'

  get 'oops', to: 'pages#oops'

  get 'haha', to: 'pages#haha'

  post 'search_team', to: 'pages#search_team'

end