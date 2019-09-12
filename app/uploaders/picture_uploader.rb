class PictureUploader < CarrierWave::Uploader::Base
  #storage :file
  storage :aws
end