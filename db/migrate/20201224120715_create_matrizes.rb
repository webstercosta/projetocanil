class CreateMatrizes < ActiveRecord::Migration[6.0]
  def change
    create_table :matrizes do |t|
      t.string :nome
      t.date :data_nascimento
      t.boolean :falecido
      t.bigint :raca_id
      t.bigint :caracteristica_id

      t.timestamps
    end
  end
end
