class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user, optional: true # Permite que o comentário não tenha um usuário associado

  validates :body, presence: true

  def author_name
    user ? user.email : 'Anonymous'
  end
end