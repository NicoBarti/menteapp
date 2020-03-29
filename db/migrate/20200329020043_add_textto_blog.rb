class AddTexttoBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :texto1, :text
    add_column :blogs, :texto2, :text
    add_column :blogs, :titulo, :text
    add_column :blogs, :comentario, :text
    add_column :blogs, :img, :string
  end
end
