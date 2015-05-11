# encoding: utf-8

class ScrapbookImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    env_path + "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def env_path
    if Rails.env == "production"
      ""
    else
      "#{Rails.env}/"
    end
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    ""
  end

  def extension_white_list
    %w(png jpg jpeg pdf gif)
  end
end
