class CreateAcercas < ActiveRecord::Migration[6.0]
  def change
    create_table :acercas do |t|
      t.string :foto, :subtitulofoto, :titulofoto, :titulopie
      t.text :texfoto, :texto1, :texto2, :texto3, :texto4, :texto5
      t.timestamps
    end
  end
end
