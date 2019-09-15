class CreateEmpleados < ActiveRecord::Migration[5.2]
  def change
    create_table :empleados do |t|
      t.integer :id_tipo_documento, null:false
      t.string :numero_documento, limit: 30, null:false
      t.string :nombre, limit: 50, null:false
      t.string :apellido_paterno, limit: 50, null:false
      t.string :apellido_materno, limit: 50, null:false
      t.integer :id_privilegio, limit: 4

      t.timestamps
    end
  end
end
