class AddOrdentoAbouts < ActiveRecord::Migration[6.0]
  def change
    add_column :abouts, :orden, :numeric
  end
end
