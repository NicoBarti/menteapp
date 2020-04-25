class AddNegritasToAbouts < ActiveRecord::Migration[6.0]
  def change
      add_column :abouts, :negritas, :boolean
  end
end
