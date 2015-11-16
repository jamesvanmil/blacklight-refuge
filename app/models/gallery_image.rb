class GalleryImage < ActiveRecord::Base
  validates_presence_of :image
  has_attached_file :image, styles: { medium: "400x400>", thumb: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
