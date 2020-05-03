class AgregaOrdenRecomendacion < ActiveRecord::Migration[6.0]
  def change
    add_column :recomendaciones, :orden, :numeric
  end
end
