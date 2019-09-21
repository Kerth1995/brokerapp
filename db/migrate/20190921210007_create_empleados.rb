class CreateEmpleados < ActiveRecord::Migration[5.2]
  def change
    create_table :empleados do |t|
      t.integer :documento_id
      t.string :numero_documento, limit: 30, null:false
      t.string :nombre, limit: 50, null:false
      t.string :apellido_paterno, limit: 50, null:false
      t.string :apellido_materno, limit: 50, null:false
      t.integer :privilegio_id

      t.timestamps
    end
  end
end
