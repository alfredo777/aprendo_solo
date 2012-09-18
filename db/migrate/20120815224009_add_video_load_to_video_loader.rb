class AddVideoLoadToVideoLoader < ActiveRecord::Migration
  def change
    add_column :video_loaders, :video_load, :string

  end
end
