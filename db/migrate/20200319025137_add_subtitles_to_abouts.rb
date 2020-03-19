class AddSubtitlesToAbouts < ActiveRecord::Migration[6.0]
  def change
    add_column :abouts, :subtitSubrr, :text
    add_column :abouts, :subtitCont, :text
  end
end
