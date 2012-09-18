# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick
  def store_dir
    "uploads/user_avatar/#{model.id}"
  end
  def extension_white_list
   %w(jpg jpeg gif png)
  end

  
  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
 
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  
  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
