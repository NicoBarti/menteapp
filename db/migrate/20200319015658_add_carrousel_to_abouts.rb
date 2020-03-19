class AddCarrouselToAbouts < ActiveRecord::Migration[6.0]
  def change
    add_column :abouts, :carrusel, :text
  end
end
