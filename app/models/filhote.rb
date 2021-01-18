class Filhote < ApplicationRecord
  belongs_to :raca
  belongs_to :caracteristica
  belongs_to :matriz
  belongs_to :padreador
  belongs_to :ninhada
  has_one_attached :avatar
  attr_default :disponivel, true
end
