class CreateFilhotes < ActiveRecord::Migration[6.0]
  def change
    create_table :filhotes do |t|
      t.string :nome
      t.date :data_nascimento
      t.decimal :preco
      t.boolean :disponivel
      t.bigint :raca_id
      t.bigint :caracteristica_id
      t.bigint :matriz_id
      t.bigint :padreador_id
      t.bigint :ninhada_id

      t.timestamps
    end
  end
end
