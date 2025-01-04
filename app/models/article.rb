class Article < ApplicationRecord
    belongs_to :category # relaciona a categoria do article
    belongs_to :user # relaciona o usuário que postou o article

    validates :title, presence: true, length: {minimum: 5} # validação de dados na inserção
    validates :body, presence: true, length: {minimum:10}

    # Scopes para manter responsabilidades de consulta para o model da aplicação
    
    # Ordena pela data de criação
    scope :desc_order, -> { order(created_at: :desc)} 

    # Seleciona os IDs fora do parâmetro
    scope :without_highlights, ->(ids) { where("id NOT IN(#{ids})") if ids.present?} 
    
    # Filtra IDs de categorias
    scope :filter_by_category, ->(category) {where(category_id: category.id) if category.present?} 

    # Filtra a data de criação dos Articles
    scope :filter_by_archive, lambda { | month_year |
        if month_year
            date = Date.strptime(month_year, '%B %Y') # Método que transforma o parâmetro de texto numa data
            where(created_at: date.beginning_of_month..date.end_of_month.next_day) 
            # Próprio rails faz o intervalo necessário dentro dos dias do mês filtrado
        end
    }
end