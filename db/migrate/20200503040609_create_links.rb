class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :nombre
      t.string :descripcion
      t.numeric :orden
      t.string :direccion
      t.timestamps
    end
  end
end
