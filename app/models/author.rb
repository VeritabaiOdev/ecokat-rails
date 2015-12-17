class Author < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged


  has_and_belongs_to_many :books

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
