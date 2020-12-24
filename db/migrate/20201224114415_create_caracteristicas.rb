class CreateCaracteristicas < ActiveRecord::Migration[6.0]
  def change
    create_table :caracteristicas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
