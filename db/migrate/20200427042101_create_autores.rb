class CreateAutores < ActiveRecord::Migration[6.0]
  def change
    create_table :autores do |t|
      t.string :nombre
      t.string :avatar
      t.text :descripcionCorta
      t.text :texto
      t.timestamps
    end
  end
end
