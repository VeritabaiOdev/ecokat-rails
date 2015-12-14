class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  has_and_belongs_to_many :authors
end
