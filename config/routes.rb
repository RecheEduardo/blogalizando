Rails.application.routes.draw do
  # Redireciona o idioma padrão (pt-BR)
  root to: redirect('/pt-BR')

  # Sscope de idioma
  scope ':locale', locale: /pt-BR|en/ do
    devise_for :users

    # A raiz dentro do escopo será a lista de artigos
    # Você pode alterar essa linha para garantir que não exista conflito
    root 'articles#index', as: :localized_root  # A raiz será a lista de artigos, com idioma prefixado

    mount LetterOpenerWeb::Engine, at: "/letter_opener"

    resources :articles, except: [:index] do
      resources :comments, only: %i[create destroy]
    end

    # funcionalidade do Rails que retorna helpers & rotas do programa que podem ser utilizados na view 
    resources :categories, except: %i[show]
  end
end