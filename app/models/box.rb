class Box < ApplicationRecord
  has_many :products

  validates_presence_of :title
end
