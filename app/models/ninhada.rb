class Ninhada < ApplicationRecord
  belongs_to :matriz
  belongs_to :padreador
  has_many :filhotes
  enum parto: { normal: 1, cesaria: 2}
  enum situacao: { gestante: 1, nascido: 2}
end
