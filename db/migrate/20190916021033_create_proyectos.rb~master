class CreateProyectos < ActiveRecord::Migration[5.2]
  def change
    create_table :proyectos do |t|
      t.integer :id_sector
      t.string :nombre, limit: 50, null:false
      t.date :fecha_inicio, null:false
      t.date :fecha_fin, null:false
      t.string :descripcion, limit: 100, null:false

      t.timestamps
    end
  end
end
