class CreateTareas < ActiveRecord::Migration[5.2]
  def change
    create_table :tareas do |t|
      t.string :id_tarea, limit: 8, null:false
      t.string :nombre, limit: 50 , null:false
      t.string :descripcion, limit: 500, null:false
      t.integer :estado

      t.timestamps
    end
  end
end
