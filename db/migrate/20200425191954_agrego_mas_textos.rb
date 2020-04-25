class AgregoMasTextos < ActiveRecord::Migration[6.0]
  def change
    add_column :abouts, :texto6, :text
    add_column :abouts, :texto7, :text
    add_column :abouts, :texto8, :text
    add_column :abouts, :texto9, :text
    add_column :abouts, :texto10, :text
  end
end
