class AddTextoToAbouts < ActiveRecord::Migration[6.0]
  def change
    add_column :abouts, :texto4, :text
    add_column :abouts, :texto5, :text

  end
end
