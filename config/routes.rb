Rails.application.routes.draw do
  root 'articles#index'

  # funcionalidade do Rails que retorna helpers que podem ser utilizados na view 
  resources :categories, except: %i[show]
  resources :articles 
end