class CreateDocumentoIdentidads < ActiveRecord::Migration[5.2]
  def change
    create_table :documento_identidads do |t|
      t.string :nombre, limit: 50
      t.string :descripcion, limit: 100

      t.timestamps
    end
  end
end
