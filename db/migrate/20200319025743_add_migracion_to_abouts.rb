class AddMigracionToAbouts < ActiveRecord::Migration[6.0]
  def change
    add_column :abouts, :comentarios, :text

  end
end
