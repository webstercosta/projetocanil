class CreateNinhadas < ActiveRecord::Migration[6.0]
  def change
    create_table :ninhadas do |t|
      t.string :nome
      t.integer :quantidade_vivo
      t.integer :quantidade_falecido
      t.integer :parto
      t.integer :situacao
      t.string :observacao
      t.bigint :matriz_id
      t.bigint :padreador_id

      t.timestamps
    end
  end
end
