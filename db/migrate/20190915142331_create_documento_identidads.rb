class CreateDocumentoIdentidads < ActiveRecord::Migration[5.2]
  def change
    create_table :documento_identidads do |t|
      t.string :nombre, limit: 50, null:false
      t.string :descripcion, limit: 100, null:false

      t.timestamps
    end
  end
end
