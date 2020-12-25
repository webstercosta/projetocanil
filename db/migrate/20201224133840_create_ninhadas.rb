class CreateNinhadas < ActiveRecord::Migration[6.0]
  def change
    create_table :ninhadas do |t|
      t.string :nome
      t.integer :quantidade_vivo
      t.integer :quantidade_falecido
      t.integer :parto
      t.integer :situacao
      t.date :data_cruzamento
      t.date :previsao_nascimento
      t.string :observacao
      t.bigint :matriz_id
      t.bigint :padreador_id

      t.timestamps
    end
  end
end
