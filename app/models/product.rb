class Product < ApplicationRecord
  belongs_to :box

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :image
  validates_presence_of :price

end
