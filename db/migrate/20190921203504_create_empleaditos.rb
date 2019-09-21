class CreateEmpleaditos < ActiveRecord::Migration[5.2]
  def change
    create_table :empleaditos do |t|
      t.integer :documento_id
      t.string :numero_documento, limit: 30
      t.string :nombre, limit: 50
      t.string :apellido_paterno, limit: 50
      t.string :apellido_materno, limit: 50
      t.integer :id_privilegio, limit: 4

      t.timestamps
    end
  end
end
