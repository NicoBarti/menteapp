class CambioNegritasaString < ActiveRecord::Migration[6.0]
  def change
        remove_column :abouts, :negrita
        add_column :abouts, :negritas, :string
      end
    end
