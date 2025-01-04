Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  if Rails.env.development? # Gera a rota de emails enviados para confirmar usuário
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # funcionalidade do Rails que retorna helpers que podem ser utilizados na view 
  resources :categories, except: %i[show]
  resources :articles 
end