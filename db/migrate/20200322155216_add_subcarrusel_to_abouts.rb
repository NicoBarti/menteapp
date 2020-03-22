class AddSubcarruselToAbouts < ActiveRecord::Migration[6.0]
  def change
    add_column :abouts, :subcarrusel, :text
  end
end
