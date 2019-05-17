class AddOnBilliboardToSong < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :on_billboard, :boolean
  end
end
