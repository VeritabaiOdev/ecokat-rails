class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :books

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
