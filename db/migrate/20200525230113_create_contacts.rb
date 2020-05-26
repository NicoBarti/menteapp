class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :nombre
      t.string :email
      t.string :comentario

      t.timestamps
    end
  end
end
