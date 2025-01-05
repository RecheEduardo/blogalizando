Rails.application.routes.draw do
  # Rota principal sem precisar do locale como query string
  root 'articles#index'
  mount LetterOpenerWeb::Engine, at: "/letter_opener"

  scope ':locale', locale: /pt-BR|en/ do
    devise_for :users

    # Root dentro do escopo de idioma
    root 'articles#index', as: :localized_root
    
    # resources - funcionalidade do Rails que retorna helpers & rotas do programa que podem ser utilizados na view 
    resources :articles, except: [:index] do
      resources :comments, only: %i[create destroy]
    end

    get 'articles', to: 'articles#index', as: 'articles_index'

    resources :categories, except: [:show]
  end
end
