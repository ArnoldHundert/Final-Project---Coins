class Post < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: { icon: "32x32", medium: "200x200", large: "400x400" }, default_url: "/images/No-Image.gif"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
