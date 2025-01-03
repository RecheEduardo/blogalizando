class Category < ApplicationRecord
    has_many :articles # relaciona todos os articles de uma categoria
    validates :name, presence: :true, length: {minimum: 3}

    scope :sorted, -> { order(:name)} # Ordena pela ordem alfabética
end
