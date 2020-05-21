class AgregaTextoBlog < ActiveRecord::Migration[6.0]
  def change
      add_column :blogs, :texto3, :numeric
      add_column :blogs, :texto4, :numeric
      add_column :blogs, :texto5, :numeric
      add_column :blogs, :texto6, :numeric
      add_column :blogs, :texto7, :numeric
      add_column :blogs, :texto8, :numeric
      add_column :blogs, :texto9, :numeric
      add_column :blogs, :texto10, :numeric
  end
end
