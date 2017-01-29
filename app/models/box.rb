class Box < ApplicationRecord
  has_many :products, dependent: :destroy

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :image
end
