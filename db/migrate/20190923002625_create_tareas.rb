class CreateTareas < ActiveRecord::Migration[5.2]
  def change
    create_table :tareas do |t|
      t.string :codigo_tarea
      t.string :nombre
      t.string :descripcion
      t.string :estado
      t.string :rubro

      t.timestamps
    end
  end
end
