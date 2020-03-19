class AddFieldsToAbouts < ActiveRecord::Migration[6.0]
  def change
    add_column :abouts, :img, :string
    add_column :abouts, :tema, :string
    add_column :abouts, :titulo, :text
    add_column :abouts, :subtitulo, :text
    add_column :abouts, :texto, :text
  end
end
