class VideoLoader < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  mount_uploader :video_load, VideoLoadUploader
end
