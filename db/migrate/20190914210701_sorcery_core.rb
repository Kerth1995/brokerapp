class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :username,  null:false
      t.string :email,            null: false
      t.string :crypted_password
      t.string :salt

      t.timestamps                null: false
    end

    add_index :usuarios, :email, unique: true
  end
end
