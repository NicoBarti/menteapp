class AgregaTextoBlog < ActiveRecord::Migration[6.0]
  def change
      add_column :blogs, :texto3, :text
      add_column :blogs, :texto4, :text
      add_column :blogs, :texto5, :text
      add_column :blogs, :texto6, :text
      add_column :blogs, :texto7, :text
      add_column :blogs, :texto8, :text
      add_column :blogs, :texto9, :text
      add_column :blogs, :texto10, :text
  end
end
