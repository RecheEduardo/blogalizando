class Article < ApplicationRecord
    validates :title, presence: :true # validação de dados na inserção
    validates :body, presence: :true
end
