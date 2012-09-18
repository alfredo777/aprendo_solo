class AddUserIdToVideoLoader < ActiveRecord::Migration
  def change
    add_column :video_loaders, :user_id, :integer

  end
end
