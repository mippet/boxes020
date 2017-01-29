class Box < ApplicationRecord
  has_many :products

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :image
end
