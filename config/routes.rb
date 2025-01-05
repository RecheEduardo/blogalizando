Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.production?

  resources :articles do 
    resources :comments, only: %i[create destroy]
  end

  # funcionalidade do Rails que retorna helpers & rotas do programa que podem ser utilizados na view 
  resources :categories, except: %i[show]
end