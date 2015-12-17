class Book < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :author
  belongs_to :category
  has_and_belongs_to_many :authors

  acts_as_commentable


  has_attached_file :avatar, styles: { large: "300x", medium: "300x", thumb: "100x100>" }, convert_options: {
      large: " -gravity center -crop '300x400+0+0'",
      medium: " -gravity center -crop '300x300+0+0'"
  }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def self.search(search)
    where("name || language || published_date || publisher LIKE ?", "%#{search}%")
  end
end
