class CambiaNegritasToInteger < ActiveRecord::Migration[6.0]
  def change
    remove_column :abouts, :negritas
    add_column :abouts, :negrita, :numeric
  end
end
