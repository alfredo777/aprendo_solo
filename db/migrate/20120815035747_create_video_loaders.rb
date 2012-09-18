class CreateVideoLoaders < ActiveRecord::Migration
  def change
    create_table :video_loaders do |t|
      t.string :title
      t.text :description
      t.string :typeo
      t.string :level

      t.timestamps
    end
  end
end
