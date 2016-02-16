class Design < ActiveRecord::Base
  has_many :reviews
  belongs_to :company
  has_attached_file :image, styles: { large: "600x600>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
