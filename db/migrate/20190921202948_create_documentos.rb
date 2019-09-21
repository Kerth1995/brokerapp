class CreateDocumentos < ActiveRecord::Migration[5.2]
  def change
    create_table :documentos do |t|
      t.string :nombre, limit: 50
      t.string :descripcion, limit: 50

      t.timestamps
    end
  end
end
