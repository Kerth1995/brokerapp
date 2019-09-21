class CreateEstudiantes < ActiveRecord::Migration[5.2]
  def change
    create_table :estudiantes do |t|
      t.integer :tutor_id
      t.string :nombre, limit: 50

      t.timestamps
    end
  end
end
