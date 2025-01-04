class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user

  validates :body, presence: :true # necessita ter a área body preenchida
end
