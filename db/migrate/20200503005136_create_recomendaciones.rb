class CreateRecomendaciones < ActiveRecord::Migration[6.0]
  def change
    create_table :recomendaciones do |t|
      t.string :titulo
      t.string :ruta
      t.timestamps
    end
  end
end
