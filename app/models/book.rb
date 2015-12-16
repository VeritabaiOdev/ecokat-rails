class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  has_and_belongs_to_many :authors

  has_attached_file :avatar, styles: { large: "300x", medium: "300x", thumb: "100x100>" }, convert_options: {
      large: " -gravity center -crop '300x400+0+0'",
      medium: " -gravity center -crop '300x300+0+0'"
  }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
