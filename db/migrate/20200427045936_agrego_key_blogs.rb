class AgregoKeyBlogs < ActiveRecord::Migration[6.0]
  change_table :blogs do |t|
  t.references :autores
end
end
