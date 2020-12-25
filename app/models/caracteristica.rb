class Caracteristica < ApplicationRecord
  has_many :matrizes
  has_many :padreadores
  has_many :filhotes
  validates_presence_of :nome
  validates_uniqueness_of :nome, case_sensitive: false
end
