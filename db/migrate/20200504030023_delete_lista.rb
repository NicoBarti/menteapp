class DeleteLista < ActiveRecord::Migration[6.0]
  def change
        drop_table :lists, force: :cascade
  end
end
