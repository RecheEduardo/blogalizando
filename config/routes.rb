Rails.application.routes.draw do
  root 'articles#index'

  # get '/articles', to: 'articles#index'
  # get '/articles/:id', to: 'articles#show'

  resources :articles 
  # funcionalidade do Rails que retorna helpers que podem ser utilizados na view 
end
