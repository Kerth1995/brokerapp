class CreateRols < ActiveRecord::Migration[5.2]
  def change
    create_table :rols do |t|
      t.string :codigo, limit: 5
      t.string :nombre, limit: 100

      t.timestamps
    end
  end
end
