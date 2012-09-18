class AddCourseIdToVideoLoader < ActiveRecord::Migration
  def change
    add_column :video_loaders, :course_id, :integer

  end
end
