class Image < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  belongs_to :album
  
  # has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  # validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes
end
