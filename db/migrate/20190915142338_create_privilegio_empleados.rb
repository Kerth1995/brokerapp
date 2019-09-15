class CreatePrivilegioEmpleados < ActiveRecord::Migration[5.2]
  def change
    create_table :privilegio_empleados do |t|
      t.string :nombre, limit: 50, null:false
      t.string :descripcion, limit: 100, null:false

      t.timestamps
    end
  end
end
