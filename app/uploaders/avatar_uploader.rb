class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
 
  if Rails.env.production? || Rails.env.staging?
    storage :fog
  else
    storage :file
  end
 
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
 
  process :resize_to_limit => [700, 700]
 
  version :thumb do
     process resize_to_fill: [100, 100]
  end
 
  def extension_whitelist
     %w(jpg jpeg gif png)
  end
 
  def filename
     "something.jpg" if original_filename
  end
 
  protected
  def secure_token
     var = :"@#{mounted_as}_secure_token"
     model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end