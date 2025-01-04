class User < ApplicationRecord
  # um usuário pode ter vários articles, se apagá-lo, apage os articles
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable,
         :confirmable, ## modules adicionados 
         :trackable
end
