class AddTextosToAbouts < ActiveRecord::Migration[6.0]
  def change
    add_column :abouts, :texto2, :text
    add_column :abouts, :texto3, :text

  end
end
