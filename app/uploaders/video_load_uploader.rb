# encoding: utf-8
class VideoLoadUploader < CarrierWave::Uploader::Base
  include CarrierWave::MimeTypes
   process :set_content_type
   
   storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/video_load/#{model.id}"
  end
  def thumb
    {:url => thumb_url}
  end
  
  
   def extension_white_list
     %w(flv mp4 mov ogg avi mpg mpeg)
   end

end
