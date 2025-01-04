class Article < ApplicationRecord
    belongs_to :category # relaciona a categoria do article
    belongs_to :user # relaciona o usuário que postou o article

    validates :title, presence: true, length: {minimum: 5} # validação de dados na inserção
    validates :body, presence: true, length: {minimum:10}

    # Scopes para manter responsabilidades de consulta para o model da aplicação
    scope :desc_order, -> { order(created_at: :desc)} # Ordena pela data de criação
    scope :without_highlights, ->(ids) { where("id NOT IN(#{ids})") if ids.present?} # Seleciona os IDs fora do parâmetro
    scope :filter_by_category, ->(category) {where(category_id: category.id) if category.present?} # Filtra ids de categorias
end