class CreateRolUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :rol_usuarios do |t|
      t.integer :usuario_id
      t.string :nombre

      t.timestamps
    end
  end
end
