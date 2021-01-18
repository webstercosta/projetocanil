class Matriz < ApplicationRecord
  belongs_to :raca
  belongs_to :caracteristica
  has_one_attached :avatar
  has_many :ninhadas
  has_many :filhotes
  validates_presence_of :nome, :data_nascimento
  attr_default :falecido, false
end
